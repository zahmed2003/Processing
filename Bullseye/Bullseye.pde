int i = 100;
void setup()
{
  size(200,200);
}
void draw (){
if (i>0){
  i=i-10;
ellipse (100,100,i,i);
noFill();
}
}
