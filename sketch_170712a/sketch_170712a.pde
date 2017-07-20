int birdx = 100;
int birdy = 300;
int birdheight = 100;
int birdwidth = 100;
int birdYVelocity = 0;
int gravity = 1;

int rectWidth = 200;
int rectHeight = 500;
int rectX = 750;
int rectY = 500;

int rectY2= rectY - 1750;
int rectHeight2 = rectHeight + 1000;

int groundHeight = 10;
int groundWidth = 1000;
int groundX = 0;
int groundY = 1000;

int skyHeight = 10;
int skyWidth = 1000;
int skyX = 0;
int skyY = -10;

int score = 0;
int highscore = 0;
int gamestate = 3;

int bx = 200;
int by = 600;
int bw = 600;
int bh = 200;

boolean endGame = false;
void setup()
{
  size(1000,1000);
}
void draw()
{
  if(gamestate == 1)
  {
  background(0, 237, 235);
  
  fill(243,252,0);
  ellipse(birdx, birdy, birdheight, birdwidth);
  birdYVelocity = birdYVelocity + gravity;
  birdy=birdy+birdYVelocity;
  
  
   fill(0,255,0);
  rect(rectX,rectY,rectWidth,rectHeight);
  
  fill(0, 255, 0);
  rect(rectX, rectY2, rectWidth, rectHeight2);
  
  rect(groundX, groundY, groundWidth, groundHeight);
  
  rect(skyX, skyY, skyWidth, skyHeight);
  
  fill(255,255,255);
 textSize(100);
  text(score, 500,100);
  
  if(rectX > -100)
  {
   rectX = rectX - 10; 
  }
  if(rectX == -100)
  {
   int random = (int) random(500,1000);
   rectY = random;
   rectY2 = random - 1750;
   rectX = 1000; 
  }
  endGame = intersects(birdx,birdy,rectX,rectY,rectHeight) || intersects(birdx,birdy,rectX,rectY2,rectHeight2) || intersects(birdx,birdy,groundX,groundY,groundWidth) || intersects(birdx,birdy,skyX,skyY,skyHeight);
  if (endGame == true)
  {
    if(highscore <= score)
    {
      highscore = score;
    }
    gamestate = 0;
  }
  if(birdx == rectX)
  {
   score++; 
  }
  }
  if (gamestate == 0)
  {
    background(0,0,0);
    
    fill(255,255,255);
    textSize(100);
    text("Game over", 250, 300);
    
    fill(255,255,255);
    textSize(50);
    text("Score: " + score, 400, 400);
    
    fill(255,255,255);
    textSize(50);
    text("Highscore: " + highscore, 350, 500);
    
    
    fill(255,255,255);
   rect(bx, by, bw, bh);
   
    fill(0,0,0);
    text("Play again?", 375, 715);
  }
  if(gamestate == 3)
  {
    background(0,0,0);
    
    fill(255,255,255);
    textSize(175);
    text("Flappy Bird", 30, 300);
       
    
    fill(255,255,255);
   rect(bx, by, bw, bh);
   
    fill(0,0,0);
    textSize(100);
    text("Play", 400, 715);
  }
  
}
void mousePressed()
{
  if(gamestate == 1)
  {
  birdYVelocity = -17;
  birdy = birdy - birdYVelocity;
  }
  if(gamestate == 0 || gamestate == 3) 
  {
   if(mouseX > bx && mouseX < bx + bw && mouseY > by && mouseY < by + bh)
   {
     endGame = false;
     score = 0;
     gamestate = 1;
     birdx = 100;
     birdy = 300;
     birdYVelocity = 0;
     rectX = 750;
   }
  }
}
boolean intersects(int birdX, int birdY, int rectX, int rectY, int rectLength) {
if (birdY > rectY && birdY < rectY + rectLength && birdX > rectX)
{
return true;
}
else 
{
return false;
}
}