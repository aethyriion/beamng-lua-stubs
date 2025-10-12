---@meta

-- BeamNG Tracker API Stubs
-- Auto-generated from HTML documentation

---@class Tracker
Tracker = {}

--- Initialize the tracker system
---@return nil
function Tracker.init() end

--- Reset all tracked damage
---@return nil
function Tracker.reset() end

--- Set damage state for a vehicle component
---@param category string Damage category (e.g., "engine", "wheels", "body")
---@param part string Specific part name (e.g., "radiatorLeak", "tire1", "door_L")
---@param damaged boolean Whether the part is damaged
---@return nil
function Tracker.setDamage(category, part, damaged) end

--- Get damage state for a vehicle component
---@param category string Damage category
---@param part string Specific part name
---@return boolean Whether the part is damaged
function Tracker.getDamage(category, part) end

--- Update graphics for damage tracking
---@param dtSim number Simulation delta time
---@return nil
function Tracker.updateGFX(dtSim) end

--- Get all damage data
---@return table Table containing all damage states
function Tracker.getDamageData() end

--- Set multiple damage states at once
---@param damageData table Table of damage states to set
---@return nil
function Tracker.setDamageData(damageData) end

