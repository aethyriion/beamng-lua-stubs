---@meta

-- BeamNG Vehicle Globals and Extensions API Stubs
-- Common global variables and functions available in vehicle Lua context

---@class BeamNGEngine
---@field Audio table Audio system interface
---@field Platform table Platform-specific functions
be = {}

---@class VehicleObject
---@field data table Vehicle part and node data
---@field id number Vehicle ID
obj = {}

---@class VehicleData
---@field data table Vehicle part and node data including nodes, beams, parts, etc.
v = {}

---@class PlayerInfo
---@field seated boolean Whether player is seated in vehicle
---@field firstPersonActive boolean Whether first person camera is active
playerInfo = {}

---@class DamageTracker
---@field setDamage fun(category: string, part: string, damaged: boolean): nil Set damage state for a vehicle part
---@field getDamage fun(category: string, part: string): boolean Get damage state for a vehicle part
---@field reset fun(): nil Reset all damage
damageTracker = {}

---@class EnergyStorage
---@field getStorage fun(name: string): EnergyStorageDevice Get energy storage device by name
energyStorage = {}

---@class EnergyStorageDevice
---@field setRemainingRatio fun(ratio: number): nil Set remaining energy ratio (0.0 to 1.0)
---@field getRemainingRatio fun(): number Get remaining energy ratio
---@field setEnergyLevel fun(level: number): nil Set energy level in Joules
---@field getEnergyLevel fun(): number Get energy level in Joules
---@field getCapacity fun(): number Get total capacity in Joules
local EnergyStorageDevice = {}

---@class AI
---@field setTarget fun(targetId: string, mode: string): nil Set AI target and behavior mode
---@field setMode fun(mode: string): nil Set AI mode (e.g., "disabled", "manual", "chase", "flee", "follow")
---@field setSpeed fun(speed: number): nil Set AI target speed
---@field setSpeedMode fun(mode: string): nil Set AI speed mode (e.g., "off", "set", "limit")
---@field setAggression fun(level: number): nil Set AI aggression level
---@field driveInLane fun(enable: boolean): nil Enable/disable lane driving
---@field spanMap fun(targetPos: table, mode: string): nil Span map to target position
ai = {}

---@class Extensions
---@field load fun(extensionName: string): nil Load a vehicle extension
---@field unload fun(extensionName: string): nil Unload a vehicle extension
---@field reload fun(extensionName: string): nil Reload a vehicle extension
extensions = {}

---@class Electrics
---@field values table Current electrical values
---@field set fun(name: string, value: number): nil Set electrical value
---@field get fun(name: string): number Get electrical value
electrics = {}

---@class Input
---@field event fun(device: string, binding: string, value: number): nil Send input event
---@field get fun(binding: string): number Get current input value
input = {}

---@class Powertrain
---@field getDevice fun(name: string): table Get powertrain device by name
---@field getDevicesByCategory fun(category: string): table Get devices by category
powertrain = {}

---@class Controller
---@field getControllerSafe fun(name: string): table Get controller by name safely
---@field loadControllerExternal fun(name: string, filename: string, config: table): nil Load external controller
controller = {}

---@class Sensors
---@field updateGFX fun(dt: number): nil Update sensor graphics
sensors = {}

---@class BeamState
---@field get fun(): table Get current beam state
---@field set fun(state: table): nil Set beam state
beamstate = {}

---@class VehicleConfig
---@field setConfig fun(config: table): nil Set vehicle configuration
---@field getConfig fun(): table Get vehicle configuration
vehicleconfig = {}

-- Common utility functions available in vehicle context

--- Log a message to the console
---@param level string Log level ("I" for info, "W" for warning, "E" for error, "D" for debug)
---@param tag string Log tag/category
---@param message string Log message
function log(level, tag, message) end

--- Print a message to the console (alias for log with info level)
---@param message string Message to print
function print(message) end

--- Dump a table structure for debugging
---@param obj table Table to dump
---@param name string? Optional name for the dump
function dump(obj, name) end

--- Deep copy a table
---@param obj table Table to copy
---@return table Copied table
function deepcopy(obj) end

--- Shallow copy a table
---@param obj table Table to copy
---@return table Copied table
function shallowcopy(obj) end

--- Clamp a value between min and max
---@param value number Value to clamp
---@param min number Minimum value
---@param max number Maximum value
---@return number Clamped value
function clamp(value, min, max) end

--- Linear interpolation between two values
---@param a number Start value
---@param b number End value
---@param t number Interpolation factor (0.0 to 1.0)
---@return number Interpolated value
function lerp(a, b, t) end

--- Sign function
---@param x number Input value
---@return number -1, 0, or 1
function sign(x) end

--- Square function
---@param x number Input value
---@return number x squared
function square(x) end

--- Convert degrees to radians
---@param degrees number Angle in degrees
---@return number Angle in radians
function math.rad(degrees) end

--- Convert radians to degrees
---@param radians number Angle in radians
---@return number Angle in degrees
function math.deg(radians) end

-- Vehicle-specific math utilities

--- Create a 3D vector
---@param x number X component
---@param y number Y component
---@param z number Z component
---@return table Vector3 object
function vec3(x, y, z) end

--- Create a quaternion
---@param x number X component
---@param y number Y component
---@param z number Z component
---@param w number W component
---@return table Quaternion object
function quat(x, y, z, w) end

--- Create a Point3F
---@param x number X coordinate
---@param y number Y coordinate
---@param z number Z coordinate
---@return table Point3F object
function Point3F(x, y, z) end

-- Common vehicle extension modules that can be loaded
-- These are typically loaded via extensions.load('moduleName')

---@class DamageExtension
damage = {}

---@class ThermalExtension
thermal = {}

---@class FluidHandlingExtension
fluidHandling = {}

---@class BreakGroupExtension
breakGroup = {}

---@class DeformGroupExtension
deformGroup = {}

---@class NodeGrabberExtension
nodeGrabber = {}

---@class RecoveryExtension
recovery = {}

---@class PartConditionExtension
partCondition = {}
