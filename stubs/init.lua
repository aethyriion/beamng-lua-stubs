---@meta

-- BeamNG.drive Lua API Stubs
-- Auto-generated from HTML documentation
-- 
-- This file provides type definitions and function signatures for the BeamNG.drive Lua API
-- to enable better IDE support, autocompletion, and type checking.
--
-- Usage:
-- 1. Add this stubs directory to your Lua language server workspace
-- 2. Configure your IDE to recognize these stub files
-- 3. Enjoy improved autocompletion and type checking for BeamNG Lua development

-- Core Engine APIs
require('engine.engine')
require('engine.beamengine')
require('engine.sim')
require('engine.engine_audio')
require('engine.engine_debug')
require('engine.engine_online')
require('engine.engine_platform')

-- Core System APIs
require('core.global')
require('core.fs')
require('core.loadingmanager')

-- Vehicle APIs
require('vehicle.vehicle')
require('vehicle.controller')
require('vehicle.globals')
require('vehicle.ai')
require('vehicle.energystorage')

-- Global constants and enums
COMMAND_CONTEXT_BVLUA = 1
COMMAND_CONTEXT_ELUA = 2
COMMAND_CONTEXT_TLUA = 3
COMMAND_CONTEXT_TS = 4
COMMAND_CONTEXT_VLUA = 5

-- Common type definitions
---@class Vec3
---@field x number
---@field y number
---@field z number
local Vec3 = {}

---@class Point3F
---@field x number
---@field y number
---@field z number
local Point3F = {}

---@class Color
---@field r number
---@field g number
---@field b number
---@field a number
local Color = {}

---@class ColorF : Color
local ColorF = {}

---@class ColorI : Color
local ColorI = {}

-- Export types for global use
_G.Vec3 = Vec3
_G.Point3F = Point3F
_G.Color = Color
_G.ColorF = ColorF
_G.ColorI = ColorI
