-- Jump Behavior
--

local Behavior = require 'src.entities.behaviors.behavior'
local Jump     = Behavior:extend()

function Jump:new(host)
	self.sprite = Animator()
	self.sprite:addAnimation('jump', {
		image  = Config.image.spritesheet.cyberpunk.jump,
		width  = 64,
		height = 64,
		total  = 1,
		frames = { { 1, 3, 1, 8 } }
	})
	self.sprite:addAnimation('jumpAim', {
		image  = Config.image.spritesheet.cyberpunk.jumpAim,
		width  = 64,
		height = 64,
		frames = { { 1, 3, 1, 3 } }
	})
	self.sprite:addAnimation('jumpAimUp', {
		image  = Config.image.spritesheet.cyberpunk.jumpAim,
		width  = 64,
		height = 64,
		total  = 1,
		frames = { { 1, 4, 1, 5 } }
	})
	self.sprite:addAnimation('jumpAimDown', {
		image  = Config.image.spritesheet.cyberpunk.jumpAim,
		width  = 64,
		height = 64,
		total  = 1,
		frames = { { 1, 1, 1, 2 } }
	})
	--
	Behavior.new(self, 'jump', host)
	--
	self.host:applyLinearImpulse(0, -self.host.initImpulse)
	self.host.onGround = false
	self.host.onWall   = false
end

return Jump