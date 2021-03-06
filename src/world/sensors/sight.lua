-- Sight Sensor
-- For Entity Detection
--

local Sensor = require 'src.world.sensors.sensor'
local Sight  = Sensor:extend()

function Sight:new(host, affects, periphery)
	Sensor.new(self, 'Sight', host)
	--
	self.affects   = Util:toBoolean(affects or {})
	self.periphery = periphery or _.__pi / 8
	self.inRange   = {}
	self.inFocus   = {}
end

-- Gather all entities in line of sight
--   in order of distance.
--
function Sight:rayCast(target)
	local cx, cy = self.host:getPosition()
	local tx, ty = target:getPosition()
	local hits   = {}

	-- cast ray and gather collisions..
	Gamestate:current().world:querySegment(cx, cy, tx, ty,
		function(fix, x, y, xn, yn, fraction)
			if self:isInSight(x, y) and (
				fix:getCategory() == Config.world.filter.category.environment or
				fix:getCategory() == Config.world.filter.category.unit
			) then

				table.insert(hits, {
					entity   = fix:getUserData(),
					position = Vec2(x, y),
					normal   = Vec2(xn, yn),
					fraction = fraction,
				})
			end

			return 1
		end)
	
	-- order hits by distance
	if #hits > 0 then
		_.__sort(hits,
			function(a, b)
				if b then return a.fraction < b.fraction
				else      return b
				end
			end)
	end

	return hits
end

function Sight:isInSight(x, y)
	local cx, cy      = self.host:getPosition()
	local radius      = self.shape:getRadius()
	local heading     = self.host.isMirrored and _.__pi or 0
	local lineOfSight = Vec2(
		_.__cos(heading) * radius,
		_.__sin(heading) * radius
	)
	local toTarget     = Vec2(x, y) - Vec2(cx, cy)
	local angleBetween = toTarget:angleBetween(lineOfSight)
	
	return angleBetween < self.periphery
end

-- Register inRange callback
--
function Sight:setInRange(callback)
	self.inRangeCallback = callback
end

-- Register outOfRange callback
--
function Sight:setOutOfRange(callback)
	self.outOfRangeCallback = callback
end

-- Register inFocus callback
--
function Sight:setInFocus(callback)
	self.inFocusCallback = callback
end

-- Register outOfFocus callback
--
function Sight:setOutOfFocus(callback)
	self.outOfFocusCallback = callback
end

-- Check for contacts
--
function Sight:beginContact(other, col)
	if self.affects[other.name] or self.affects[other.category] then
		self.inRange[other.uuid] = other
		
		if self.inRangeCallback then
			self.inRangeCallback(other, col)
		end
	end
end

-- Check for separations
--
function Sight:endContact(other, col)
	if self.inRange[other.uuid] then
		self.inRange[other.uuid] = nil
		
		if self.outOfRangeCallback then
			self.outOfRangeCallback(other, col)
		end

		if self.inFocus[other.uuid] then
			--`out of focus`
			self.inFocus[other.uuid] = nil
			
			if self.outOfFocusCallback then
				self.outOfFocusCallback(other)
			end
		end
	end
end

-- Update focus
--
function Sight:update(dt)
	for __, other in pairs(self.inRange) do
		-- cast ray to collect entity hits
		local hits = self:rayCast(other)

		if self.inFocus[other.uuid] then
		-- Already in focus..
			if #hits == 0 or hits[1].entity.uuid ~= other.uuid then
			-- => `out of focus`
				self.inFocus[other.uuid] = nil

				if self.outOfFocusCallback then
					self.outOfFocusCallback(other)
				end
			end
		else
		-- Not in focus..
			if #hits > 0 and hits[1].entity.uuid == other.uuid then
				self.inFocus[other.uuid] = hits[1]

				if self.inFocusCallback then
					self.inFocusCallback(other)
				end
			end
		end
	end
end

-- Draw sighting radius
--
function Sight:draw()
	-- lg.setColor(Config.color.sensor.sight)
	-- self.shape:draw()

	-- local cx, cy  = self.host:getPosition()
	-- local radius  = self.shape:getRadius()
	-- local heading = self.host.isMirrored and _.__pi or 0
	-- local r, g, b = unpack(Config.color.sensor.sight)

	-- lg.setColor(r, g, b, 0.25)
	-- lg.arc('fill', cx, cy, radius, heading - self.periphery, heading + self.periphery)
	-- lg.setColor(r, g, b, 0.75)
	-- lg.setLineWidth(1)
	-- lg.arc('line', cx, cy, radius, heading - self.periphery, heading + self.periphery)

	-- for __, focus in pairs(self.inFocus) do
	-- 	lg.setColor(r, g, b, 0.75)
	-- 	lg.line(cx, cy, focus.entity:getPosition())
	-- end
end

return Sight