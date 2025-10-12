---@meta

-- BeamNG BeamEngine API Stubs
-- Auto-generated from HTML documentation

---@class BeamEngine
BeamEngine = {}

--- BeamEngine:deleteAllObjects()
---@return nil
function BeamEngine.deleteAllObjects() end

--- BeamEngine:getSlotCount()
---@return any
function BeamEngine.getSlotCount() end

--- BeamEngine:queueAllObjectLua("beamstate.setCouplerVisiblityExternal(" .. tostring(obj:getID()) .. "," .. tostring(visible) .. ")")
---@param param1 any
---@return any
function BeamEngine.queueAllObjectLua(param1) end

--- BeamEngine:queueAllObjectLuaExcept('ai.setSpeedMode("off")', objectId)
---@param param1 any
---@param param2 number
---@return any
function BeamEngine.queueAllObjectLuaExcept(param1, param2) end

--- BeamEngine:spawnObject("vehicles/"..v, nil, float3(0, 3 * n, 0))
---@param name any
---@param position any
---@param rotation any
---@return number
function BeamEngine.spawnObject(name, position, rotation) end

--- BeamEngine:update(1/2000, 1/2000)
---@param data number
---@param options number
---@return any
function BeamEngine.update(data, options) end

