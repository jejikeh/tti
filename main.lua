Object = require("libs/classic/classic")
require("libs/recursiveEnumerate/recursiveEnumerate")


function love.load()
    local object_files = {}
    initEntity(object_files,'entity')

    
    Circle:new(200,200,20)
end

function love.draw() 
    Circle:draw()
end