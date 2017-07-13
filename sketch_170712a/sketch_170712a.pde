int birdx = 100;
int birdy = 300;
int birdheight = 100;
int birdwidth = 100;
int birdYVelocity = 0;
int gravity = 1;

int rectWidth = 200;
int rectHeight = 500;
int rectX = 500;
int rectY = 500;
void setup()
{
  size(1000,1000);
}
void draw()
{
  background(0, 237, 235);
  
  fill(243,252,0);
  ellipse(birdx, birdy, birdheight, birdwidth);
  birdYVelocity = birdYVelocity + gravity;
  birdy=birdy+birdYVelocity;
  
   fill(0,255,0);
  rect(rectX,rectY,rectWidth,rectHeight);
  if(rectX > -100)
  {
   rectX = rectX - 10; 
  }
  if(rectX == -100)
  {
   int random = (int) random(100,1000);
   rectY = random;
   rectX = 1000; 
  }
  boolean noEndGame = intersects(birdx,birdy,rectX,rectY,rectHeight);
  if endGame = true
  {
    
  }
  
}
void mousePressed()
{
  birdYVelocity = -17;
  birdy = birdy - birdYVelocity;
}
boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
return true;
else 
return false;
}



