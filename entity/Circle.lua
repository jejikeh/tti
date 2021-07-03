Circle = Object:extend()

function Circle:new(x,y,radius)
    self.x = x
    self.y = y
    self.radius = radius
end

function Circle:draw()
    love.graphics.circle("fill",self.x,self.y,self.radius)
end
