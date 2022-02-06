position_y = 100 
position_x=100
function love.load()
  
end
function love.update()
  position_y = position_y +1
end
function love.draw()
  love.graphics.rectangle("fill",position_x,position_y,20,80)
end