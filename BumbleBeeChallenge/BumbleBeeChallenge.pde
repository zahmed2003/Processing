int i = 0;
void draw() {
 if(i < 41)
{
  if(i%2==1)
  {
    fill(252,245,0);
    ellipse(100 + 5*i,100 + 5*i,45,45);
  }
  if(i%2==0)
  {
    fill(5,5,5);
    ellipse(100 + 5*i, 100 + 5*i,45,45);
  }
  i++;
}
drawBeeFace(300,300);
}

void drawFlower(int x, int y) {
  noStroke();
  translate(x, y);
  // draw 5 petals, rotating after each one
  fill(#c6ff89); // green
  for (int i = 0; i < 5; i++) {
    ellipse(0, -40, 50, 50);
    rotate(radians(72));
  }
  fill(#fff9bb); // light yellow
  ellipse(0, 0, 50, 50);
}

void drawBeeFace(int BeeFaceX, int BeeFaceY) {
  noStroke();
  fill(0, 0, 0);
  stroke(1);
  strokeWeight(5);
  line(BeeFaceX-10, BeeFaceY-27, BeeFaceX-17, BeeFaceY-50);
  line(BeeFaceX+10, BeeFaceY-27, BeeFaceX+17, BeeFaceY-50);
  ellipse(BeeFaceX-17, BeeFaceY-50, 10, 10);
  ellipse(BeeFaceX+17, BeeFaceY-50, 10, 10);
  noStroke();
  fill(255, 251, 28);
  ellipse(BeeFaceX, BeeFaceY, 60, 60); // face
  fill(255, 237, 209);
  fill(0, 0, 0);
  ellipse(BeeFaceX-10, BeeFaceY-15, 10, 10); // eyes
  ellipse(BeeFaceX+10, BeeFaceY-15, 10, 10);
  ellipse(BeeFaceX, BeeFaceY-5, 10, 10); // nose
  ellipse(BeeFaceX, BeeFaceY+10, 20, 10);// mouth
  fill(255, 251, 28);
  ellipse(BeeFaceX, BeeFaceY+5, 20, 6);
}
void setup() {  
  ellipseMode(CENTER);
  size(500, 500);
  background(160, 160, 160); 
  drawFlower(350, 100);
  
}