---@meta

-- BeamNG Vehicle Energy Storage API Stubs
-- Energy storage system for fuel tanks, batteries, etc.

---@class EnergyStorage
EnergyStorage = {}

--- Get energy storage device by name
---@param name string Storage device name (e.g., "mainTank", "battery", "fuelTank")
---@return EnergyStorageDevice|nil Storage device or nil if not found
function EnergyStorage.getStorage(name) end

--- Get all energy storage devices
---@return table<string, EnergyStorageDevice> Table of all storage devices
function EnergyStorage.getAllStorages() end

--- Get storage devices by type
---@param storageType string Storage type (e.g., "fuel", "electric", "hybrid")
---@return table<string, EnergyStorageDevice> Table of matching storage devices
function EnergyStorage.getStoragesByType(storageType) end

--- Initialize energy storage system
---@return nil
function EnergyStorage.init() end

--- Reset all energy storage devices
---@return nil
function EnergyStorage.reset() end

--- Update energy storage system
---@param dt number Delta time
---@return nil
function EnergyStorage.updateGFX(dt) end

--- Get total energy across all storage devices
---@return number Total energy in Joules
function EnergyStorage.getTotalEnergy() end

--- Get total capacity across all storage devices
---@return number Total capacity in Joules
function EnergyStorage.getTotalCapacity() end

---@class EnergyStorageDevice
---@field name string Device name
---@field type string Storage type
---@field capacity number Maximum capacity in Joules
---@field energyLevel number Current energy level in Joules
local EnergyStorageDevice = {}

--- Set remaining energy ratio (0.0 = empty, 1.0 = full)
---@param ratio number Energy ratio (0.0 to 1.0)
---@return nil
function EnergyStorageDevice:setRemainingRatio(ratio) end

--- Get remaining energy ratio
---@return number Energy ratio (0.0 to 1.0)
function EnergyStorageDevice:getRemainingRatio() end

--- Set energy level in Joules
---@param level number Energy level in Joules
---@return nil
function EnergyStorageDevice:setEnergyLevel(level) end

--- Get energy level in Joules
---@return number Energy level in Joules
function EnergyStorageDevice:getEnergyLevel() end

--- Get maximum capacity in Joules
---@return number Capacity in Joules
function EnergyStorageDevice:getCapacity() end

--- Get storage device type
---@return string Storage type
function EnergyStorageDevice:getType() end

--- Get storage device name
---@return string Device name
function EnergyStorageDevice:getName() end

--- Check if storage device is empty
---@return boolean True if empty
function EnergyStorageDevice:isEmpty() end

--- Check if storage device is full
---@return boolean True if full
function EnergyStorageDevice:isFull() end

--- Add energy to storage device
---@param amount number Energy amount to add in Joules
---@return number Actual amount added
function EnergyStorageDevice:addEnergy(amount) end

--- Remove energy from storage device
---@param amount number Energy amount to remove in Joules
---@return number Actual amount removed
function EnergyStorageDevice:removeEnergy(amount) end

--- Get energy density (Joules per unit volume)
---@return number Energy density
function EnergyStorageDevice:getEnergyDensity() end

--- Get mass of storage device
---@return number Mass in kg
function EnergyStorageDevice:getMass() end

--- Get volume of storage device
---@return number Volume in liters
function EnergyStorageDevice:getVolume() end

--- Set storage device enabled state
---@param enabled boolean Whether device is enabled
---@return nil
function EnergyStorageDevice:setEnabled(enabled) end

--- Check if storage device is enabled
---@return boolean True if enabled
function EnergyStorageDevice:isEnabled() end

--- Get storage device temperature
---@return number Temperature in Celsius
function EnergyStorageDevice:getTemperature() end

--- Set storage device temperature
---@param temperature number Temperature in Celsius
---@return nil
function EnergyStorageDevice:setTemperature(temperature) end

--- Get storage device health/condition
---@return number Health ratio (0.0 to 1.0)
function EnergyStorageDevice:getHealth() end

--- Set storage device health/condition
---@param health number Health ratio (0.0 to 1.0)
---@return nil
function EnergyStorageDevice:setHealth(health) end

--- Get energy flow rate (positive = charging, negative = discharging)
---@return number Flow rate in Watts
function EnergyStorageDevice:getFlowRate() end

--- Set maximum charge rate
---@param rate number Maximum charge rate in Watts
---@return nil
function EnergyStorageDevice:setMaxChargeRate(rate) end

--- Set maximum discharge rate
---@param rate number Maximum discharge rate in Watts
---@return nil
function EnergyStorageDevice:setMaxDischargeRate(rate) end

--- Get maximum charge rate
---@return number Maximum charge rate in Watts
function EnergyStorageDevice:getMaxChargeRate() end

--- Get maximum discharge rate
---@return number Maximum discharge rate in Watts
function EnergyStorageDevice:getMaxDischargeRate() end

--- Check if storage device can charge
---@return boolean True if can charge
function EnergyStorageDevice:canCharge() end

--- Check if storage device can discharge
---@return boolean True if can discharge
function EnergyStorageDevice:canDischarge() end

--- Get storage device efficiency
---@return number Efficiency ratio (0.0 to 1.0)
function EnergyStorageDevice:getEfficiency() end

--- Set storage device efficiency
---@param efficiency number Efficiency ratio (0.0 to 1.0)
---@return nil
function EnergyStorageDevice:setEfficiency(efficiency) end
