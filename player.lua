Player = {}

function Player:load()
    --canto esquerdo do circulo é
    -- X = x+100 e Y = y+100
    self.x = 400
    self.y = 200
    self.speed = 500
    self.width = 129
    self.height = 128
    self.sprite = love.graphics.newImage("sprites/parrot.png")
end

function Player:update(dt)
    self:move(dt)
end

function Player:draw()
    --o centro do circulo é a posicao(x,y)
    love.graphics.draw(self.sprite,self.x,self.y)
end

function Player:move(dt)
    -- X AXIS <- ->
    --move to the right
    if (love.keyboard.isDown("right") or love.keyboard.isDown("d")) and (self.x+self.width+self.speed * dt <= love.graphics.getWidth() + 1 ) then
        self.x = self.x+self.speed * dt
    end
    --move to the left
    if (love.keyboard.isDown("left") or love.keyboard.isDown("a")) and (self.x-self.speed * dt  >= -1 )  then
        self.x = self.x-self.speed * dt
    end
    -- Y AXIS ^ v
    -- move to the top
    if (love.keyboard.isDown("up") or love.keyboard.isDown("w")) and (self.y-self.speed * dt  >= -1 )  then
        self.y = self.y-self.speed * dt

    end
    -- move to the bottom
    if (love.keyboard.isDown("down") or love.keyboard.isDown("s")) and (self.y+self.height+self.speed * dt <= love.graphics.getHeight() + 1)  then
        self.y = self.y+self.speed * dt
    end

end