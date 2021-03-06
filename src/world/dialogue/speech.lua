-- Speech Dialogue
-- Title, Avatar & Text
--

local Modern = require 'modern'
local Speech  = Modern:extend()

function Speech:new(host, text)
	-- properties
	self.host       = host
	self.avatars    = Config.image.spritesheet.avatars
	self.avatar     = _.__lower(host.name)
	self.background = Config.image.sprites.dialogue.speech

	-- dimensions
	self.width  = self.background:getWidth()
	self.height = self.background:getHeight()

	-- scaling
	self.sx = 0.33
	self.sy = 0.33

	-- dialogue - title
	self.title = lg.newText(Config.ui.font.lg)
	self.title:setf(host.title, Config.tileSize * 20, 'left')

	-- dialogue - text
	self.text = lg.newText(Config.ui.font.lg)
	self.text:setf(text, Config.tileSize * 35, 'center')
end

-- Update
--
function Speech:update(dt)
	--
end

function Speech:draw()
	local cx, cy = self.host:getPosition()
	local w, h   = self.width, self.height
	local sx, sy = self.sx, self.sy
	local tx     = cx - w * sx / 4
	local ty     = cy - h * sy / 2 - h / 3

	lg.push("all")
	lg.translate(tx, ty)
	lg.scale(sx, sy)
	--
	lg.setColor(Config.color.white)

	-- background
	lg.draw(self.background)

	-- avatar
	self.avatars:draw(self.avatar, Config.tileSize * 42, Config.tileSize * 2, 0, 5, 5)

	-- title
	lg.draw(self.title, Config.tileSize * 4, Config.tileSize * 2)

	-- dialogue
	lg.draw(self.text, Config.tileSize * 5, Config.tileSize * 6)
	
	--
	lg.pop()
end

return Speech