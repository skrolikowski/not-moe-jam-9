-- World Event
--

local Modern = require 'modern'
local Event  = Modern:extend()

function Event:new(data)
	self.data = data
	--
	self.id      = data.id
	self.name    = data.name or 'Event'
	self.cx      = data.x + data.width / 2
	self.cy      = data.y + data.height / 2
	self.visible = data.visible or false
	self.width   = data.width
	self.height  = data.height

	-- body & shape	
	self.body  = lp.newBody(_World.world, self.cx, self.cy, 'static')
	self.shape = Shapes['rectangle'](self.width, self.height)
	self.shape:setBody(self.body)

	-- fixture
	self.fixture = lp.newFixture(self.body, self.shape.shape, 1)
	self.fixture:setUserData(self)
	self.fixture:setSensor(true)
end

-- Flag for removal
--
function Event:destroy()
	self.fixture:destroy()
	self.body:destroy()
	--
	self.remove = true
end

-- Event - beginContact
--
function Event:beginContact(other, col)
	--
end

-- Event - endContact
--
function Event:endContact(other, col)
	--
end

-- Update Event
function Event:update(dt)
	--
end

-- Draw Event
function Event:draw()
	self.shape:draw()
end

return Event