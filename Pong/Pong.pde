PImage backgroundImage;


int x = 350;
int y = 206;
int speedX = 5;
int speedY = 5;
int Px = 25;
int Py = 500;
int Pheight = 100;
int Pwidth = 10;
int score = 0;



void setup()
{
  size(768, 512);
  
 backgroundImage = loadImage("pongbg.jpg");
 


}

void draw()
{
  image(backgroundImage, 0, 0);
  
  textSize(20);
    fill(255,255,255);
 text("Score: " + score, 10, 30);
  
  fill(0,0,255);
  ellipse(x,y,50,50);
  stroke(0,00,0);
  
  fill(#65298B);
  rect(Px, Py, Pwidth, Pheight);

  
  x += speedX;
  y -= speedY;
  
  Py = mouseY;
  
  if(x + 25 >= 768)
  {
   speedX = -speedX;
  }
 else if( x - 25 <= 0)
  { 
    textSize(100);
    fill(255,255,255);
 text("You lose!", 184, 256);
  }
  if(score == 10)
  {
    textSize(100);
    fill(255,255,255);
 text("You Win!", 184, 256);
  }
  
  if(y + 25 >= 512)
  {
    
   speedY = -speedY;
  }
 else if( y - 25 <= 0)
  {
    speedY = -speedY;
  }
 boolean intersect = intersects(x, y, Px, Py, Pwidth);
 if(intersect == true)
 {
   score++;
   speedX = -speedX + 2;
 }
}

boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}