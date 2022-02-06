pad = {}
pad.y = 0
pad.x=0
pad.largeur=20
pad.hauteur=80
function love.load()
  
end
function love.update()
  if love.keyboard.isDown("down") and  pad.y+pad.hauteur<love.graphics.getHeight() then
    pad.y = pad.y +1
  end
  if love.keyboard.isDown("up") and pad.y>0 then
    pad.y =pad.y -1
  end  

end
function love.draw()
  love.graphics.rectangle("fill",pad.x,pad.y,pad.largeur,pad.hauteur)
end