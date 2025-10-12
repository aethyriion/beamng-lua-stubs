---@meta

-- BeamNG Vehicle AI API Stubs
-- AI system for vehicle behavior and autonomous driving

---@class AI
AI = {}

--- Set AI target for chase, follow, or other behaviors
---@param targetId string|number Target vehicle ID or object ID
---@param mode string AI behavior mode ("chase", "follow", "flee", "escort")
---@return nil
function AI.setTarget(targetId, mode) end

--- Set AI driving mode
---@param mode string AI mode ("disabled", "manual", "random", "chase", "flee", "follow", "span")
---@return nil
function AI.setMode(mode) end

--- Set target speed for AI
---@param speed number Target speed in m/s
---@return nil
function AI.setSpeed(speed) end

--- Set AI speed mode
---@param mode string Speed mode ("off", "set", "limit", "legal")
---@return nil
function AI.setSpeedMode(mode) end

--- Set AI aggression level
---@param level number Aggression level (0.0 to 1.0)
---@return nil
function AI.setAggression(level) end

--- Enable or disable lane driving
---@param enable boolean Whether to drive in lanes
---@return nil
function AI.driveInLane(enable) end

--- Span map to target position
---@param targetPos table Target position {x, y, z}
---@param mode string Span mode ("manual", "race", "flee")
---@return nil
function AI.spanMap(targetPos, mode) end

--- Set route for AI to follow
---@param route table Array of waypoints
---@return nil
function AI.setRoute(route) end

--- Start AI system
---@return nil
function AI.startFollowing() end

--- Stop AI system
---@return nil
function AI.stopFollowing() end

--- Reset AI state
---@return nil
function AI.reset() end

--- Set AI script
---@param script string Script name to load
---@return nil
function AI.setScript(script) end

--- Set waypoint for AI navigation
---@param waypoint table Waypoint data {pos, radius, speed}
---@return nil
function AI.setWaypoint(waypoint) end

--- Clear all waypoints
---@return nil
function AI.clearWaypoints() end

--- Add waypoint to route
---@param waypoint table Waypoint to add
---@return nil
function AI.addWaypoint(waypoint) end

--- Set AI parameters
---@param params table AI parameters table
---@return nil
function AI.setParameters(params) end

--- Get current AI state
---@return table Current AI state information
function AI.getState() end

--- Set AI cutoff distance
---@param distance number Distance in meters
---@return nil
function AI.setCutOffDist(distance) end

--- Set AI avoidance parameters
---@param params table Avoidance parameters
---@return nil
function AI.setAvoidance(params) end

--- Enable or disable AI debug visualization
---@param enable boolean Whether to show debug info
---@return nil
function AI.debugMode(enable) end

--- Set AI update frequency
---@param frequency number Update frequency in Hz
---@return nil
function AI.setUpdateFrequency(frequency) end

--- Force AI to brake
---@param force number Brake force (0.0 to 1.0)
---@return nil
function AI.setBrakeForce(force) end

--- Set AI throttle input
---@param throttle number Throttle input (0.0 to 1.0)
---@return nil
function AI.setThrottle(throttle) end

--- Set AI steering input
---@param steering number Steering input (-1.0 to 1.0)
---@return nil
function AI.setSteering(steering) end

--- Set AI to use manual inputs
---@param manual boolean Whether to use manual control
---@return nil
function AI.setManualControl(manual) end

--- Get AI debug information
---@return table Debug information
function AI.getDebugInfo() end

--- Set AI line following parameters
---@param params table Line following parameters
---@return nil
function AI.setLineFollowing(params) end

--- Enable or disable AI collision avoidance
---@param enable boolean Whether to avoid collisions
---@return nil
function AI.setCollisionAvoidance(enable) end

--- Set AI reaction time
---@param time number Reaction time in seconds
---@return nil
function AI.setReactionTime(time) end

--- Set AI skill level
---@param skill number Skill level (0.0 to 1.0)
---@return nil
function AI.setSkill(skill) end

--- Set AI to respect traffic rules
---@param respect boolean Whether to respect traffic rules
---@return nil
function AI.setRespectTrafficRules(respect) end

--- Set AI maximum deviation from path
---@param deviation number Maximum deviation in meters
---@return nil
function AI.setMaxDeviation(deviation) end

--- Set AI cornering parameters
---@param params table Cornering parameters
---@return nil
function AI.setCorneringParams(params) end

--- Update AI system (called automatically)
---@param dt number Delta time
---@return nil
function AI.updateGFX(dt) end

--- Initialize AI system
---@return nil
function AI.init() end

--- Reset AI to default state
---@return nil
function AI.resetToDefault() end
