---@meta

-- BeamNG FS API Stubs
-- Auto-generated from HTML documentation

---@class FS
FS = {}

--- FS:copyFile(v, newFilename)
---@param param1 any
---@param param2 any
---@return any
function FS.copyFile(param1, param2) end

--- FS:directoryCreate(cacheDir)
---@param name any
---@return any
function FS.directoryCreate(name) end

--- FS:directoryRemove(editor.levelPath .. "/main")
---@param id any
---@return any
function FS.directoryRemove(id) end

--- FS:fileSize(file)
---@param param1 any
---@return any
function FS.fileSize(param1) end

--- FS:findFiles(directory..'/mods', '*.bank', 0, true, false)
---@param query any
---@param options any
---@param param3 any
---@param param4 any
---@param param5 any
---@return any
function FS.findFiles(query, options, param3, param4, param5) end

--- FS:hashFileSHA1(sourcefilename)
---@param param1 any
---@return boolean
function FS.hashFileSHA1(param1) end

--- FS:mount(v)
---@param param1 any
---@return any
function FS.mount(param1) end

--- FS:removeFile(layout.filename)
---@param id any
---@return nil
function FS.removeFile(id) end

--- FS:renameFile(newFilename, finalFilename)
---@param param1 any
---@param param2 any
---@return any
function FS.renameFile(param1, param2) end

--- FS:stat(file.path)
---@param param1 any
---@return any
function FS.stat(param1) end

--- FS:triggerFilesChanged(files)
---@param param1 any
---@return any
function FS.triggerFilesChanged(param1) end

--- FS:unmount('mods/translations.zip')
---@param param1 any
---@return any
function FS.unmount(param1) end

