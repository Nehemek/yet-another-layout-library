-------------------------------------------------------------------------------
-- YALL (Yet Another Layout Library)
-- Copyright (c) 2024 Nehemek Amador
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.
--
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- INTERFACE
-------------------------------------------------------------------------------
---@class yall.Interface
---@field private width number
---@field private height number
---@field private canvas love.Canvas?
local Interface = {}
Interface.__index = Interface

-------------------------------------------------------------------------------
-- INTERFACE NEW
-------------------------------------------------------------------------------
---@param width number
---@param height number
---@return yall.Interface
function Interface:new(width, height)
    setmetatable(self, Interface)
    self.width = width or (love.graphics and love.graphics:getWidth()) or 1920
    self.height = height or (love.graphics and love.graphics:getHeight()) or 1080
    self.nodes = {}
    self.modified = true
    return self
end

-------------------------------------------------------------------------------
-- (META) __MODIFY
-------------------------------------------------------------------------------
---@param isModified boolean?
function Interface:modify(isModified)
    self.modified = isModified or true
end

-------------------------------------------------------------------------------
-- (META) _IS MODIFIED
-------------------------------------------------------------------------------
---@return boolean
function Interface:isModified()
    return self.modified
end

-------------------------------------------------------------------------------
-- INTERFACE SET WIDTH
-------------------------------------------------------------------------------
---@param newWidth integer
function Interface:setWidth(newWidth)
    if not (newWidth == self.width) then
        self.width = newWidth
        self:modify()
    end
end

-------------------------------------------------------------------------------
-- INTERFACE GET WIDTH
-------------------------------------------------------------------------------
---@return integer
function Interface:getWidth()
    return self.width
end

-------------------------------------------------------------------------------
-- INTERFACE SET HEIGHT
-------------------------------------------------------------------------------
---@param newHeight integer
function Interface:setHeight(newHeight)
    if not (newHeight == self.height) then
        self.height = newHeight
        self:modify()
    end
end

-------------------------------------------------------------------------------
-- INTERFACE GET HEIGHT
-------------------------------------------------------------------------------
---@return integer
function Interface:getHeight()
    return self.height
end

-------------------------------------------------------------------------------
-- INTERFACE SET DIMENSIONS
-------------------------------------------------------------------------------
---@param newWidth integer
---@param newHeight integer
function Interface:setDimensions(newWidth, newHeight)
    if not (newWidth == self.width and newHeight == self.height) then
        self.width = newWidth
        self.height = newHeight
        self:modify()
    end
end

-------------------------------------------------------------------------------
-- INTERFACE GET DIMENSIONS
-------------------------------------------------------------------------------
---@return integer, integer
function Interface:getDimensions()
    return self.width, self.height
end

-------------------------------------------------------------------------------
-- INTERFACE GET NODES
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- INTERFACE GET NODE
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- INTERFACE UPDATE
-------------------------------------------------------------------------------
function Interface:update()
end

-------------------------------------------------------------------------------
-- INTERFACE GET CANVAS
-------------------------------------------------------------------------------
function Interface:getCanvas()
    if not self.canvas or not (self.canvas:getWidth() == self.width) or not (self.canvas:getHeight() == self.height) then
        self.canvas = love.graphics.newCanvas(self.width, self.heigh)
    end
    return self.canvas
end

-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- YALL MAIN
-------------------------------------------------------------------------------
---@class YallClass
Yall = {}

-------------------------------------------------------------------------------
-- CREATE INTERFACE
-------------------------------------------------------------------------------
---@params width integer
---@params height integer
function Yall.newInterface(width, height)
    --return
end

-------------------------------------------------------------------------------
-- YALL MAIN
-------------------------------------------------------------------------------