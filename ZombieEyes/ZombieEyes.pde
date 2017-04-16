void setup()
{
  size(200,180);
 PImage face = loadImage("face.jpeg");
 image(face,0,0);
}

void draw()
{
  fill(mouseX,mouseY,5);
 ellipse(89,100,20,20);
 
 fill(5,5,5);
 ellipse(89,100,10,10);
 
 fill(mouseX,mouseY,5);
 ellipse(146,86,20,20);
 
 fill(5,5,5);
 ellipse(146,86,10,10);
}