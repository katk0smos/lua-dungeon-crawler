local player = {}

player.vx = 0
player.vy = 0

player.maxSpd = 16

player.x = 0
player.y = 0

player.spr = nil

function player:init(x,y,spr,maxSpd)
	self.spr = spr
	self.x = x
	self.y = y
	self.maxSpd = maxSpd
end

function player:update(dt)
	self.x = self.x + (self.vx * dt)
	self.y = self.y + (self.vy * dt)
end

function player:draw()
	love.graphics.draw(self.spr, self.x, self.y, self.x + self.spr:getWidth(), self.y + self.spr:getHeight())
end

return player