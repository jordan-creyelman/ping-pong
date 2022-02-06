pad_y = 0
pad_x=0
function love.load()
  
end
function love.update()
  if love.keyboard.isDown("down") then
    pad_y = pad_y +1
  end
  if love.keyboard.isDown("up") then
    pad_y =pad_y -1
  end  

end
function love.draw()
  love.graphics.rectangle("fill",pad_x,pad_y,20,80)
end