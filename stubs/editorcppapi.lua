---@meta

-- BeamNG EditorCppApi API Stubs
-- Auto-generated from HTML documentation

---@class EditorCppApi
EditorCppApi = {}

--- EditorCppApi.checkObjectIconHit(pt)
---@param param1 any
---@return any
function EditorCppApi.checkObjectIconHit(param1) end

--- EditorCppApi.colladaExportSelection(data.filepath)
---@param param1 any
---@return any
function EditorCppApi.colladaExportSelection(param1) end

--- EditorCppApi.createObject("SimGroup")
---@param name any
---@return number
function EditorCppApi.createObject(name) end

--- EditorCppApi.drawClosestObjectIcons()
---@return any
function EditorCppApi.drawClosestObjectIcons() end

--- EditorCppApi.enableEditor(enable)
---@param flag any
---@return any
function EditorCppApi.enableEditor(flag) end

--- EditorCppApi.getAxisGizmoTranslateOffset()
---@return any
function EditorCppApi.getAxisGizmoTranslateOffset() end

--- EditorCppApi.getObjectClassIcons()
---@return any
function EditorCppApi.getObjectClassIcons() end

--- EditorCppApi.onAxisGizmoMouseDown(mousePos, camMouseRay.pos, camMouseRay.dir)
---@param param1 any
---@param param2 any
---@param param3 any
---@return any
function EditorCppApi.onAxisGizmoMouseDown(param1, param2, param3) end

--- EditorCppApi.onAxisGizmoMouseDragged(mousePos, camMouseRay.pos, camMouseRay.dir)
---@param param1 any
---@param param2 any
---@param param3 any
---@return any
function EditorCppApi.onAxisGizmoMouseDragged(param1, param2, param3) end

--- EditorCppApi.onAxisGizmoMouseMove(mousePos, camMouseRay.pos, camMouseRay.dir)
---@param param1 any
---@param param2 any
---@param param3 any
---@return any
function EditorCppApi.onAxisGizmoMouseMove(param1, param2, param3) end

--- EditorCppApi.onAxisGizmoMouseUp(mousePos, camMouseRay.pos, camMouseRay.dir)
---@param param1 any
---@param param2 any
---@param param3 any
---@return any
function EditorCppApi.onAxisGizmoMouseUp(param1, param2, param3) end

--- EditorCppApi.setAxisGizmoAlignment(alignment)
---@param key any
---@return nil
function EditorCppApi.setAxisGizmoAlignment(key) end

--- EditorCppApi.setAxisGizmoMode(mode)
---@param key any
---@return nil
function EditorCppApi.setAxisGizmoMode(key) end

--- EditorCppApi.setAxisGizmoRotateLock(x, y, z)
---@param key any
---@param value any
---@param options any
---@return nil
function EditorCppApi.setAxisGizmoRotateLock(key, value, options) end

--- EditorCppApi.setAxisGizmoScaleLock(x, y, z)
---@param key any
---@param value any
---@param options any
---@return nil
function EditorCppApi.setAxisGizmoScaleLock(key, value, options) end

--- EditorCppApi.setAxisGizmoSelectedElement(-1)
---@param key number
---@return nil
function EditorCppApi.setAxisGizmoSelectedElement(key) end

--- EditorCppApi.setAxisGizmoTransform(matrix, matrix:getColumn(3), scale or Point3F(1, 1, 1))
---@param key any
---@param value any
---@param options Vec3
---@return nil
function EditorCppApi.setAxisGizmoTransform(key, value, options) end

--- EditorCppApi.setAxisGizmoTranslateLock(x, y, z)
---@param key any
---@param value any
---@param options any
---@return nil
function EditorCppApi.setAxisGizmoTranslateLock(key, value, options) end

--- EditorCppApi.setClassIsSelectable(typeName, selectable)
---@param key any
---@param value any
---@return nil
function EditorCppApi.setClassIsSelectable(key, value) end

--- EditorCppApi.setDrawObjectIcons(editor.getPreference("gizmos.general.drawObjectIcons"))
---@param key any
---@return nil
function EditorCppApi.setDrawObjectIcons(key) end

--- EditorCppApi.setDrawObjectsText(editor.getPreference("gizmos.general.drawObjectText"))
---@param key any
---@return nil
function EditorCppApi.setDrawObjectsText(key) end

--- EditorCppApi.setEventControlModifiers(editor.keyModifiers.shiftDown, editor.keyModifiers.alt, editor.keyModifiers.ctrl)
---@param key any
---@param value any
---@param options any
---@return nil
function EditorCppApi.setEventControlModifiers(key, value, options) end

--- EditorCppApi.setGridSnap(enabled, gridSize)
---@param key any
---@param value any
---@return nil
function EditorCppApi.setGridSnap(key, value) end

--- EditorCppApi.setHideIconClass(val, tableContains(hiddenObjectIconClasses, val))
---@param key any
---@param value any
---@return nil
function EditorCppApi.setHideIconClass(key, value) end

--- EditorCppApi.setHoveredObjectId(editor.objectIconHoverId)
---@param key number
---@return nil
function EditorCppApi.setHoveredObjectId(key) end

--- EditorCppApi.setRotateSnap(enabled, rotationSnap)
---@param key any
---@param value any
---@return nil
function EditorCppApi.setRotateSnap(key, value) end

--- EditorCppApi.snapPositionToGrid(finalPos)
---@param param1 any
---@return any
function EditorCppApi.snapPositionToGrid(param1) end

