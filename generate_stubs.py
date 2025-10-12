#!/usr/bin/env python3
"""
BeamNG Lua Stub Generator

This script parses HTML files containing BeamNG function documentation
and generates Lua stub files for IDE support.
"""

import re
import os
import sys
from pathlib import Path
from typing import Dict, List, Set, Tuple, Optional
from collections import defaultdict
import html


class BeamNGStubGenerator:
    def __init__(self):
        self.functions = defaultdict(list)  # namespace -> list of functions
        self.constants = defaultdict(list)  # namespace -> list of constants
        self.seen_functions = set()  # to avoid duplicates
        
    def parse_html_file(self, html_file: str) -> None:
        """Parse an HTML file and extract function information."""
        print(f"Parsing {html_file}...")
        
        with open(html_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Find all json-value json-string divs that contain function calls
        pattern = r'<div class="json-value json-string">([^<]+)</div>'
        matches = re.findall(pattern, content)
        
        for match in matches:
            # Decode HTML entities
            decoded = html.unescape(match)
            self._extract_function_info(decoded)
    
    def _extract_function_info(self, code_line: str) -> None:
        """Extract function information from a code line."""
        # Skip lines that are just variable assignments or control structures
        if any(keyword in code_line for keyword in ['if ', 'for ', 'while ', 'local ', 'return ', 'end', 'then', 'else']):
            return
            
        # Look for function calls with patterns like:
        # Module.function(args)
        # Module:method(args)
        # function(args)
        
        # Pattern for module.function or module:method calls
        module_pattern = r'([A-Z][a-zA-Z0-9_]*(?:\.[A-Z][a-zA-Z0-9_]*)*)[\.:]([a-zA-Z_][a-zA-Z0-9_]*)\s*\('
        matches = re.finditer(module_pattern, code_line)
        
        for match in matches:
            namespace = match.group(1)
            function_name = match.group(2)
            
            # Extract the full function call to analyze parameters
            start_pos = match.start()
            paren_count = 0
            end_pos = start_pos
            
            for i, char in enumerate(code_line[start_pos:], start_pos):
                if char == '(':
                    paren_count += 1
                elif char == ')':
                    paren_count -= 1
                    if paren_count == 0:
                        end_pos = i + 1
                        break
            
            if end_pos > start_pos:
                full_call = code_line[start_pos:end_pos]
                self._add_function(namespace, function_name, full_call)
        
        # Look for standalone function calls
        standalone_pattern = r'\b([a-zA-Z_][a-zA-Z0-9_]*)\s*\([^)]*\)'
        matches = re.finditer(standalone_pattern, code_line)
        
        for match in matches:
            function_name = match.group(1)
            # Skip common Lua keywords and operators
            if function_name not in ['if', 'for', 'while', 'function', 'local', 'return', 'end', 'then', 'else', 'and', 'or', 'not']:
                full_call = match.group(0)
                self._add_function('_global', function_name, full_call)
    
    def _add_function(self, namespace: str, function_name: str, full_call: str) -> None:
        """Add a function to the appropriate namespace."""
        # Create a unique key to avoid duplicates
        key = f"{namespace}.{function_name}"
        if key in self.seen_functions:
            return

        self.seen_functions.add(key)

        # Parse parameters from the function call
        raw_params = self._extract_parameters(full_call)
        params = self._generate_parameter_names(function_name, raw_params)

        # Create function info
        func_info = {
            'name': function_name,
            'params': params,
            'raw_params': raw_params,
            'full_call': full_call,
            'namespace': namespace
        }

        self.functions[namespace].append(func_info)

    def _generate_parameter_names(self, function_name: str, raw_params: List[str]) -> List[str]:
        """Generate meaningful parameter names based on function name and context."""
        if not raw_params:
            return []

        # Common parameter patterns based on function names
        param_patterns = {
            'get': ['key', 'index', 'name'],
            'set': ['key', 'value', 'options'],
            'create': ['name', 'config', 'options'],
            'spawn': ['name', 'position', 'rotation'],
            'delete': ['id', 'name'],
            'remove': ['id', 'name'],
            'add': ['item', 'value', 'options'],
            'update': ['data', 'options'],
            'load': ['path', 'options'],
            'save': ['path', 'data'],
            'find': ['query', 'options'],
            'cast': ['start', 'end', 'options'],
            'play': ['sound', 'options'],
            'stop': ['id'],
            'start': ['options'],
            'init': ['config', 'options'],
            'enable': ['flag'],
            'disable': ['flag'],
            'toggle': ['flag'],
            'open': ['path', 'mode'],
            'close': ['handle'],
            'read': ['source', 'options'],
            'write': ['destination', 'data'],
        }

        # Try to match function name patterns
        base_params = []
        for pattern, suggested_params in param_patterns.items():
            if pattern.lower() in function_name.lower():
                base_params = suggested_params[:len(raw_params)]
                break

        # If no pattern matched, generate generic names
        if not base_params:
            base_params = [f'param{i+1}' for i in range(len(raw_params))]

        # Ensure we have enough parameter names
        while len(base_params) < len(raw_params):
            base_params.append(f'param{len(base_params)+1}')

        return base_params[:len(raw_params)]
    
    def _extract_parameters(self, full_call: str) -> List[str]:
        """Extract parameter names from a function call."""
        # Find the parameter list inside parentheses
        paren_start = full_call.find('(')
        paren_end = full_call.rfind(')')
        
        if paren_start == -1 or paren_end == -1:
            return []
        
        param_str = full_call[paren_start + 1:paren_end].strip()
        if not param_str:
            return []
        
        # Split by commas, but be careful about nested function calls
        params = []
        current_param = ""
        paren_depth = 0
        
        for char in param_str:
            if char == '(':
                paren_depth += 1
            elif char == ')':
                paren_depth -= 1
            elif char == ',' and paren_depth == 0:
                if current_param.strip():
                    params.append(self._clean_parameter(current_param.strip()))
                current_param = ""
                continue
            
            current_param += char
        
        if current_param.strip():
            params.append(self._clean_parameter(current_param.strip()))
        
        return params
    
    def _clean_parameter(self, param: str) -> str:
        """Clean up a parameter name."""
        # Remove quotes and whitespace
        param = param.strip('\'"').strip()

        # If it's a literal value, convert to a generic parameter name
        if param.isdigit() or param.startswith('"') or param.startswith("'"):
            return 'value'

        # Handle boolean literals
        if param in ['true', 'false']:
            return 'flag'

        # Handle nil
        if param == 'nil':
            return 'value'

        # Handle string literals
        if param.startswith("'") and param.endswith("'"):
            return 'str'

        # Handle complex expressions - extract meaningful parts
        if '.' in param:
            parts = param.split('.')
            # Use the last meaningful part
            for part in reversed(parts):
                if part and not part.isdigit():
                    param = part
                    break

        # Handle array access
        if '[' in param:
            param = param.split('[')[0]

        # Handle function calls
        if '(' in param:
            param = param.split('(')[0]

        # Convert to a valid parameter name
        param = re.sub(r'[^a-zA-Z0-9_]', '_', param)
        param = re.sub(r'^[0-9]', '_', param)
        param = re.sub(r'_+', '_', param)  # Remove multiple underscores
        param = param.strip('_')  # Remove leading/trailing underscores

        return param or 'param'
    
    def generate_stub_file(self, namespace: str, output_dir: str) -> None:
        """Generate a Lua stub file for a specific namespace."""
        if namespace not in self.functions:
            return
        
        # Create output directory
        Path(output_dir).mkdir(parents=True, exist_ok=True)
        
        # Determine filename
        if namespace == '_global':
            filename = 'global.lua'
        else:
            filename = f"{namespace.lower().replace('.', '_')}.lua"
        
        filepath = Path(output_dir) / filename
        
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(f"---@meta\n\n")
            f.write(f"-- BeamNG {namespace} API Stubs\n")
            f.write(f"-- Auto-generated from HTML documentation\n\n")
            
            if namespace != '_global':
                # Create the namespace table
                parts = namespace.split('.')
                for i, part in enumerate(parts):
                    indent = '  ' * i
                    if i == 0:
                        f.write(f"---@class {part}\n")
                        f.write(f"{part} = {{}}\n\n")
                    else:
                        parent = '.'.join(parts[:i])
                        f.write(f"---@class {namespace}\n")
                        f.write(f"{parent}.{part} = {{}}\n\n")
            
            # Sort functions by name
            sorted_functions = sorted(self.functions[namespace], key=lambda x: x['name'])
            
            for func_info in sorted_functions:
                self._write_function_stub(f, func_info, namespace)
        
        print(f"Generated {filepath}")
    
    def _write_function_stub(self, f, func_info: Dict, namespace: str) -> None:
        """Write a single function stub."""
        name = func_info['name']
        params = func_info['params']
        raw_params = func_info.get('raw_params', [])

        # Write function documentation with example
        f.write(f"--- {func_info['full_call']}\n")

        # Write parameter annotations with better types
        for i, param in enumerate(params):
            param_type = self._infer_parameter_type(raw_params[i] if i < len(raw_params) else '')
            f.write(f"---@param {param} {param_type}\n")

        # Infer return type based on function name
        return_type = self._infer_return_type(name)
        f.write(f"---@return {return_type}\n")

        # Write function signature
        if namespace == '_global':
            f.write(f"function {name}({', '.join(params)}) end\n\n")
        else:
            f.write(f"function {namespace}.{name}({', '.join(params)}) end\n\n")

    def _infer_parameter_type(self, raw_param: str) -> str:
        """Infer parameter type from the raw parameter value."""
        if not raw_param:
            return 'any'

        raw_param = raw_param.strip()

        # Check for specific patterns
        if raw_param.isdigit() or re.match(r'^\d+\.\d+$', raw_param):
            return 'number'
        elif raw_param in ['true', 'false']:
            return 'boolean'
        elif raw_param == 'nil':
            return 'nil'
        elif raw_param.startswith('"') or raw_param.startswith("'"):
            return 'string'
        elif 'vec3' in raw_param.lower() or 'point3f' in raw_param.lower():
            return 'Vec3'
        elif 'color' in raw_param.lower():
            return 'Color'
        elif raw_param.endswith('Id') or raw_param.endswith('ID'):
            return 'number'
        else:
            return 'any'

    def _infer_return_type(self, function_name: str) -> str:
        """Infer return type based on function name patterns."""
        name_lower = function_name.lower()

        if name_lower.startswith('get') or name_lower.startswith('find'):
            return 'any'
        elif name_lower.startswith('is') or name_lower.startswith('has'):
            return 'boolean'
        elif name_lower.startswith('create') or name_lower.startswith('spawn'):
            return 'number'  # Usually returns an ID
        elif name_lower.startswith('set') or name_lower.startswith('delete') or name_lower.startswith('remove'):
            return 'nil'
        else:
            return 'any'
    
    def generate_all_stubs(self, output_dir: str = "stubs") -> None:
        """Generate stub files for all namespaces."""
        print(f"\nGenerating stub files in {output_dir}/...")
        
        for namespace in sorted(self.functions.keys()):
            self.generate_stub_file(namespace, output_dir)
        
        print(f"\nGenerated stubs for {len(self.functions)} namespaces")
        print(f"Total functions: {sum(len(funcs) for funcs in self.functions.values())}")


def main():
    if len(sys.argv) < 2:
        print("Usage: python generate_stubs.py <html_file1> [html_file2] ...")
        print("Example: python generate_stubs.py 'List of BeamNG Functions and Fields.html'")
        sys.exit(1)
    
    generator = BeamNGStubGenerator()
    
    # Parse all provided HTML files
    for html_file in sys.argv[1:]:
        if os.path.exists(html_file):
            generator.parse_html_file(html_file)
        else:
            print(f"Warning: File not found: {html_file}")
    
    # Generate stub files
    generator.generate_all_stubs()


if __name__ == "__main__":
    main()
