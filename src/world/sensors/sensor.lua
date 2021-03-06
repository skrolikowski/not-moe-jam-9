-- Entity Sensor
--

local Modern = require 'modern'
local Sensor = Modern:extend()

-- Create new Sensor
--
function Sensor:new(name, host)
	self.name     = name or 'Sensor'
	self.uuid     = Util:uuid()
	self.category = 'Sensor'
	self.host     = host
end

-- Flag for removal
--
function Sensor:destroy()
	self.remove = true
end

-- Get x,y-position of sensor
--
function Sensor:getPosition()
	return self.shape:center()
end

-- Get bounding box
--
function Sensor:bounds()
	return self.shape:bounds()
end

-- Get shape dimensions
--
function Sensor:dimensions()
	return self.shape:dimensions()
end

-- Set shape of sensor and attach to host entity
--
function Sensor:setShape(shape)
	-- shape
	self.shape = shape
	self.shape:setBody(self.host.body)

	-- fixture
	self.fixture = lp.newFixture(self.shape.body, self.shape.shape, 1)
	self.fixture:setGroupIndex(Config.world.filter.group.sensor)
	self.fixture:setCategory(Config.world.filter.category.sensor)
	self.fixture:setMask(unpack(Config.world.filter.mask.sensor))
	self.fixture:setUserData(self)
	self.fixture:setSensor(true)
end

-- 
--
function Sensor:beginContact(other, col)
	--
end

-- 
--
function Sensor:endContact(other, col)
	--
end

-- Update Sensor
--
function Sensor:update(dt)
	--
end

-- Draw Sensor
--
function Sensor:draw()
	--
end

return Sensor