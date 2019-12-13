-- Idle Behavior
--

local Behavior = require 'src.entities.behaviors.behavior'
local Idle     = Behavior:extend()

function Idle:new(host)
	self.sprite = Animator()
	self.sprite:addAnimation('idle', {
		image  = Config.image.spritesheet.cyberpunk.idle,
		width  = 64,
		height = 64,
		frames = { { 1, 1, 1, 6 } }
	})
	self.sprite:addAnimation('aim', {
		image  = Config.image.spritesheet.cyberpunk.aim,
		width  = 64,
		height = 64,
		frames = { { 1, 5, 1, 5 } }
	})
	self.sprite:addAnimation('aimUp', {
		image  = Config.image.spritesheet.cyberpunk.aim,
		width  = 64,
		height = 64,
		frames = { { 1, 6, 1, 7 } }
	})
	self.sprite:addAnimation('aimDown', {
		image  = Config.image.spritesheet.cyberpunk.aim,
		width  = 64,
		height = 64,
		frames = { { 1, 3, 1, 4 } }
	})
	--
	Behavior.new(self, 'idle', host)
end

-- Update animation
--
function Idle:update(dt)
	local heading  = self.host.heading.y
	--local isAiming = self.host.locking

	if self.host.lockedIn == self.name then
	-- Aiming
		if heading == 'N' then
			self.sprite:switchTo('aimUp')
		elseif heading == 'S' then
			self.sprite:switchTo('aimDown')
		else
			self.sprite:switchTo('aim')
		end
	else
	-- Idle
		self.sprite:switchTo('idle')
	end
	--
	Behavior.update(self, dt)
end

return Idle