Car car1 = new Car(400, 300, 50, 5);
Car car2 = new Car(0, 200, 75, 3);
Car car3 = new Car(400, 100, 60, 7);
Car car4 = new Car(0, 0, 80, 2);

int frogX = 200;
int frogY = 375;
int frogDiameter = 50;

int hopDistance = 30;
int gamestate= 1;

int bx = 100;
int by = 200;
int bw = 200;
int bh = 100;

boolean endgame = false;

void setup()
{
  size(400,400);
}

void draw()
{
  if (gamestate == 1)
  {
  background(0,0,255);
  
  fill(0,255,0);
  ellipse(frogX, frogY, frogDiameter, frogDiameter);
  
  car1.moveLeft();
  car1.display();
  
  car2.moveRight();
  car2.display();
  
   car3.moveLeft();
  car3.display();
  
    car4.moveRight();
  car4.display();
  
  insideSpace();
  
  endgame = car1.intersects(car1) || car2.intersects(car2) || car3.intersects(car3);
 if (endgame == true)
 {
   frogX = 200;
  frogY = 375; 
 }

if(frogY <= 0)
{
 gamestate = 0; 
}
}
 if (gamestate == 0)
  {
    background(0,0,0);
    
    fill(255,255,255);
    textSize(75);
    text("You won!", 25, 100);
    
    fill(255,255,255);
   rect(bx, by, bw, bh);
   
    fill(0,0,0);
    textSize(25);
    text("Play again?", 135, 255);
  }
}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
      frogY -= hopDistance;
      }
      else if(keyCode == DOWN)
      {
        frogY += hopDistance;
      }
      else if(keyCode == RIGHT)
      {
       frogX += hopDistance;
      }
      else if(keyCode == LEFT)
      {
        frogX -= hopDistance;
      }
   }
}
void mousePressed()
{
  if(gamestate == 0 ) 
  {
   if(mouseX > bx && mouseX < bx + bw && mouseY > by && mouseY < by + bh)
   {
     endgame = false;
    gamestate = 1;
     frogX = 200;
     frogY = 375;
    
   }
  } 
}
void insideSpace()
{
  if(frogX >= 375)
  {
   frogX = 375;
  }
  if(frogX <= 25)
  {
   frogX = 25;
  }
  if(frogY >= 375)
{
 frogY = 375; 
}
}





class Car
{
  int carX;
  int carY;
  int carSize;
  int carSpeed;
  
  public Car(int carX, int carY, int carSize, int carSpeed)
  {
   this.carX = carX;
   this.carY = carY;
   this.carSize = carSize;
   this.carSpeed = carSpeed;
  }
  
   void display() 
  {
    fill(0,255,0);
    rect(carX , carY,  carSize, 50);
  }
  void moveLeft()
  {
   carX -= carSpeed; 
   
   if(carX + carSize <= 0)
   {
    carX = 400; 
   }
  }
void moveRight()
  {
   carX += carSpeed; 
   
   if(carX >= 400)
   {
    carX = 0 - carSize; 
   }
  }
   double getX()
   {
  return carX;
   }
    double getY()
   {
  return carY;
   }
    double getSize()
   {
  return carSize;
   }
   boolean intersects(Car car) {
if ((frogY + (frogDiameter/2) > car.getY() && frogY - (frogDiameter/2)< car.getY()+50) && (frogX + (frogDiameter/2) > car.getX() && frogX - (frogDiameter/2) < car.getX()+car.getSize()))
          return true;
    else 
        return false;

}

}

