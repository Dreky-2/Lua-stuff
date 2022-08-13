
function love.load(dt)
x = 100
y = 50
x2 = 50
y2 = 100
i = 0
L = 0
end

function love.update(dt)  
  
if L == 0 then
  for i = 0,10 * dt do
    x2 = x2 + 10 
end 
L = 1
else
  for i = 0,10 * dt do 
  x2 = x2 - 10 
L = 0
end
end
  if love.keyboard.isDown("right") and love.keyboard.isDown("left") then
      elseif love.keyboard.isDown("right") then
        x = x + 100 * dt
      elseif love.keyboard.isDown("left") then 
        x = x - 100 * dt
  end
  
  if love.keyboard.isDown("down") and love.keyboard.isDown("up") then
      elseif love.keyboard.isDown("down") then
      y = y + 100 * dt
      elseif love.keyboard.isDown("up") then 
      y = y - 100 * dt
  end
  
end

function love.draw()
    love.graphics.circle("line", x, y, 50, 50)
    love.graphics.rectangle("line", x2, y2, 50, 50)
end