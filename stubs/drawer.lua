---@meta

-- BeamNG Drawer API Stubs
-- Auto-generated from HTML documentation

---@class Drawer
Drawer = {}

--- Drawer:drawAxisGizmo()
---@return any
function Drawer.drawAxisGizmo() end

--- Drawer:drawCylinder((info.a.pos):toPoint3F(), (info.b.pos):toPoint3F(), info.radius, ColorF(1,1,1,shapeAlpha/2))
---@param param1 Vec3
---@param param2 Vec3
---@param param3 any
---@param param4 Color
---@return any
function Drawer.drawCylinder(param1, param2, param3, param4) end

--- Drawer:drawLine((vec3Destination+proj):toPoint3F(), (vec3Destination-proj*2):toPoint3F(), ColorF(0.5,0.0,0.5,1.0))
---@param param1 any
---@param param2 any
---@param param3 any
---@return any
function Drawer.drawLine(param1, param2, param3) end

--- Drawer:drawSphere(nPosPoint3F, n.radius, color)
---@param param1 Vec3
---@param param2 any
---@param param3 Color
---@return any
function Drawer.drawSphere(param1, param2, param3) end

--- Drawer:drawSquarePrism(nPosPoint3F, lidPos:toPoint3F(), Point2F(0.6, n.radius*2), Point2F(0.6, mapNodes[lid].radius*2), linkColor)
---@param param1 Vec3
---@param param2 Vec3
---@param param3 any
---@param param4 any
---@param param5 Color
---@return any
function Drawer.drawSquarePrism(param1, param2, param3, param4, param5) end

--- Drawer:drawText(nPosPoint3F, String(tostring(nid)), colBlack)
---@param param1 Vec3
---@param param2 any
---@param param3 any
---@return any
function Drawer.drawText(param1, param2, param3) end

--- Drawer:drawTextAdvanced(vec3(e.pos):toPoint3F(), String(string.format("%0.1fm", e.distToTarget or -1)), ColorF(1,1,1,1), true, false, ColorI(0,0,0,192))
---@param param1 Vec3
---@param param2 any
---@param param3 Color
---@param param4 any
---@param param5 any
---@param param6 Color
---@return any
function Drawer.drawTextAdvanced(param1, param2, param3, param4, param5, param6) end

--- Drawer:setDrawingEnabled(false)
---@param key any
---@return nil
function Drawer.setDrawingEnabled(key) end

--- Drawer:setSolidTriCulling(false)
---@param key any
---@return nil
function Drawer.setSolidTriCulling(key) end

