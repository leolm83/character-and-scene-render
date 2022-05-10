require("player")
require("scene")
function love.load()
    Player:load()
    Scene:load()
end

function love.update(dt)
    Player:update(dt)
end

function love.draw()
    Scene:draw()
    Player:draw()
    
end