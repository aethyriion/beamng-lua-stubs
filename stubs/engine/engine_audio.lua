---@meta

-- BeamNG Engine.Audio API Stubs
-- Auto-generated from HTML documentation

---@class Engine
Engine = {}

---@class Engine.Audio
Engine.Audio = {}

--- Engine.Audio.createSource('AudioGui', 'event:>Ambient>Maps>Garage>Generic')
---@param name any
---@param config any
---@return number
function Engine.Audio.createSource(name, config) end

--- Engine.Audio.deleteSource(item.extras.soundId)
---@param id number
---@return nil
function Engine.Audio.deleteSource(id) end

--- Engine.Audio.playOnce('AudioGui','core/art/sound/volumeTest.wav')
---@param sound any
---@param options any
---@return any
function Engine.Audio.playOnce(sound, options) end

--- Engine.Audio.setChannelVolume('AudioChannelMaster', value)
---@param key any
---@param value any
---@return nil
function Engine.Audio.setChannelVolume(key, value) end

