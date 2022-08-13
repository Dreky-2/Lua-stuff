require("Example")
function love.load()
listofrectangles = {}
end

test = 10
require("example")
print(test)
function createRect()
    rect = {}
  rect.x = 100
  rect.y = 100
  rect.width = 70
  rect.height = 90
  rect.speed = 100
  
  table.insert(listofrectangles, rect)
  end
function love.keypressed(key)
  
  if key == "space" then
    createRect()
    end
  end
function love.update(dt)
  for i,v in ipairs(listofrectangles) do
      v.x = v.x + v.speed * dt
  end

end



function love.draw()
   for i,v in ipairs(listofrectangles) do
   love.graphics.rectangle("line", v.x, v.y, v.width, v.height)
  end
end