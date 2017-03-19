int i = 100;
int offset = 0;
int speed = 1;
int max = 300;
int position1 = 100;
int position2 = 400;
int size = 100;
void setup()
{
  size(500,200);
}
void drawBullseye (int x, int y){
  for (i = size; i > 0; i -= 10) {
    noFill();
ellipse (x,y,i,i);

}
}
void draw(){
  background (201,201,201);
drawBullseye(position1 + offset,size);
drawBullseye(position2 - offset, size);
if (offset < max)
{
offset += speed;
}
else
{
  offset = -speed;
}
}

