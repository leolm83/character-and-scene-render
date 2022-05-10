Scene = {}
function Scene:load()
    self.x = 0
    self.y = 0
    self.sprite = love.graphics.newImage("sprites/background.png")
end

function Scene:update(dt)
   
end

function Scene:draw()
   love.graphics.draw(self.sprite,self.x,self.y)
end