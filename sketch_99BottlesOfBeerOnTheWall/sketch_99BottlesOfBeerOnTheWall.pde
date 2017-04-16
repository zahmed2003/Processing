for(int i=90;i>0;i--)
{
  if(i>2)
  {
    println(i + " bottles of beer on the wall");
    println(i + " bottles of beer");
    println("Take one down, pass it around");
    println( i - 1 + " bottles of beer on the wall");
    println();
    
  }
  if(i==2)
  {
    println(i + " bottles of beer on the wall");
    println(i + " bottles of beer");
    println("Take one down, pass it around");
    println( i - 1 + " bottle of beer on the wall");
    println();
  }
  if(i==1)
  {
    println(i + " bottle of beer on the wall");
    println(i + " bottle of beer");
    println("Take one down, pass it around");
    println("No more bottles of beer");
    println();
  }
 
}