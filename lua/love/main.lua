pad = {}
pad.y = 0
pad.x=0
pad.largeur=20
pad.hauteur=80
padR = {}
padR.y = 0
padR.x=780
padR.largeur=20
padR.hauteur=80
balle = {}
balle.x =400
balle.y=300
balle.hauteur = 20
balle.largeur=20
balle.vitesse_x=2
balle.vitesse_y=2
score_joueur1=0
score_joueur2=0

function draw(score_joueur1,score_joueur2)
  
  score = score_joueur1.."-"..score_joueur2
  love.graphics.print(score,400,0)
  love.graphics.rectangle("fill",pad.x,pad.y,pad.largeur,pad.hauteur)
  love.graphics.rectangle("fill",padR.x,padR.y,padR.largeur,padR.hauteur)
  love.graphics.rectangle("fill",balle.x,balle.y,balle.largeur,balle.hauteur)
end  
function love.load()
  balle.x=love.graphics.getWidth()/2-balle.largeur/2
  balle.y=love.graphics.getHeight()/2-balle.hauteur/2
 
end
function love.update()
  
  if love.keyboard.isDown("down") and  pad.y+pad.hauteur<love.graphics.getHeight() then
    pad.y = pad.y +1
    padR.y = padR.y +1
  end
  if love.keyboard.isDown("up") and pad.y>0 then
    pad.y =pad.y -1
    padR.y =padR.y -1
  end  
 balle.x =balle.x+2
end
function love.draw()
  draw(score_joueur1,score_joueur2)
  
end  