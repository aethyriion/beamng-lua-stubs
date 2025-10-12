# Contributing to BeamNG Stubs

Thank you for your interest in contributing to the BeamNG Stubs project! This document provides guidelines and information for contributors.

## 🎯 How to Contribute

### 🐛 Reporting Bugs

1. **Check existing issues** first to avoid duplicates
2. **Use the bug report template** when creating new issues
3. **Provide detailed information**:
   - Expected vs actual behavior
   - Code snippet demonstrating the issue
   - Your IDE and extension versions
   - BeamNG.drive version (if applicable)

### 💡 Suggesting Enhancements

1. **Check existing feature requests** to avoid duplicates
2. **Describe the enhancement** in detail
3. **Explain the use case** and why it would be beneficial
4. **Consider implementation complexity** and maintenance burden

### 🔧 Code Contributions

#### Setting Up Development Environment

1. **Fork and clone the repository**:
   ```bash
   git clone https://github.com/your-username/beamng-stubs.git
   cd beamng-stubs
   ```

2. **Set up Python environment**:
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   pip install -e ".[dev]"
   ```

3. **Install development tools**:
   ```bash
   # Install StyLua for Lua formatting
   # Download from: https://github.com/JohnnyMorganz/StyLua/releases
   
   # Install Lua Language Server for validation
   # VS Code: Install "Lua" extension by sumneko
   ```

#### Development Workflow

1. **Create a feature branch**:
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make your changes** following the coding standards below

3. **Test your changes**:
   ```bash
   # Run Python linting
   black .
   isort .
   flake8 .
   mypy .
   
   # Format Lua files
   stylua stubs/
   
   # Test stub generation
   python generate_stubs.py --help
   ```

4. **Commit your changes**:
   ```bash
   git add .
   git commit -m "feat: add new feature description"
   ```

5. **Push and create a pull request**:
   ```bash
   git push origin feature/your-feature-name
   ```

## 📋 Coding Standards

### Python Code

- **Follow PEP 8** style guidelines
- **Use Black** for code formatting (line length: 88)
- **Use isort** for import sorting
- **Add type hints** for all functions and methods
- **Write docstrings** for all public functions and classes
- **Keep functions focused** and single-purpose

Example:
```python
def parse_function_signature(signature: str) -> Tuple[str, List[str], Optional[str]]:
    """Parse a function signature into name, parameters, and return type.
    
    Args:
        signature: The function signature string to parse
        
    Returns:
        Tuple of (function_name, parameter_list, return_type)
        
    Raises:
        ValueError: If signature format is invalid
    """
    # Implementation here
    pass
```

### Lua Stubs

- **Use 4 spaces** for indentation
- **Follow StyLua** formatting rules
- **Add comprehensive comments** for complex APIs
- **Use consistent naming** conventions
- **Group related functions** logically

Example:
```lua
---@class Engine
---@field Audio EngineAudio
Engine = {}

---Cast a ray in the world and return hit information
---@param startPos Point3F Starting position of the ray
---@param endPos Point3F Ending position of the ray
---@param includeStatic boolean Whether to include static objects
---@param includeDynamic boolean Whether to include dynamic objects
---@return table|nil Hit information or nil if no hit
function Engine.castRay(startPos, endPos, includeStatic, includeDynamic) end
```

### Documentation

- **Use clear, concise language**
- **Provide practical examples**
- **Keep README.md up to date**
- **Document breaking changes**
- **Include setup instructions**

## 🧪 Testing

### Automated Tests

The project uses GitHub Actions for continuous integration:

- **Python linting**: Black, isort, flake8, mypy
- **Lua formatting**: StyLua validation
- **Stub validation**: Syntax checking and LSP validation

### Manual Testing

Before submitting a PR, please test:

1. **Stub generation** works with sample HTML files
2. **IDE integration** provides proper autocompletion
3. **No syntax errors** in generated Lua files
4. **Documentation** is accurate and helpful

## 📝 Commit Message Guidelines

Use conventional commit format:

- `feat:` New features
- `fix:` Bug fixes
- `docs:` Documentation changes
- `style:` Code style changes (formatting, etc.)
- `refactor:` Code refactoring
- `test:` Adding or updating tests
- `chore:` Maintenance tasks

Examples:
```
feat: add support for new BeamNG API functions
fix: correct parameter types in Engine.Audio stubs
docs: update installation instructions for VS Code
style: format Lua files with StyLua
refactor: improve stub generation performance
test: add validation for generated stub syntax
chore: update dependencies and CI configuration
```

## 🔄 Pull Request Process

1. **Ensure CI passes** - all automated checks must pass
2. **Update documentation** if needed
3. **Add tests** for new functionality
4. **Request review** from maintainers
5. **Address feedback** promptly and professionally
6. **Squash commits** if requested before merging

### PR Checklist

- [ ] Code follows project style guidelines
- [ ] Self-review completed
- [ ] Documentation updated (if applicable)
- [ ] Tests added/updated (if applicable)
- [ ] CI checks pass
- [ ] Breaking changes documented

## 🏷️ Release Process

Releases are managed by maintainers:

1. **Version bumping** follows semantic versioning
2. **Changelog** is updated with notable changes
3. **GitHub releases** include detailed release notes
4. **Tags** are created for each release

## 🤝 Community Guidelines

### Code of Conduct

- **Be respectful** and inclusive
- **Provide constructive feedback**
- **Help newcomers** get started
- **Focus on the code**, not the person
- **Assume good intentions**

### Communication

- **Use GitHub issues** for bug reports and feature requests
- **Use GitHub discussions** for questions and general discussion
- **Be patient** - maintainers are volunteers
- **Search existing issues** before creating new ones

## 🆘 Getting Help

If you need help:

1. **Check the README** and documentation first
2. **Search existing issues** and discussions
3. **Create a new issue** with detailed information
4. **Join community discussions** for general questions

## 🙏 Recognition

Contributors are recognized in:

- **GitHub contributors** list
- **Release notes** for significant contributions
- **README acknowledgments** for major features

Thank you for contributing to BeamNG Stubs! Your efforts help the entire BeamNG modding community. 🚗✨
