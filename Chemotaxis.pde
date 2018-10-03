Bacteria [] bob;
void setup()
{
  size(600,600);
  bob = new Bacteria[15];
  for(int i=0; i < bob.length; i++)
    bob[i] = new Bacteria();
}
void draw()
{
  background(255);
  for(int i=0; i < bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
  }
  textAlign(CENTER);
  fill(200,200,200);
  ellipse(mouseX, mouseY, 30, 30);
  fill(0);
  text("A+", mouseX, mouseY);
}
class Bacteria
{
  int myColor, myX, myY;
  Bacteria()
  {
    myX = myY = 300;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void move()
  {
    if (mouseX > myX)
      myX = myX + (int)(Math.random()*7)-2;
    else
      myX = myX + (int)(Math.random()*7)-4;
    if (mouseY > myY)
      myY = myY + (int)(Math.random()*7)-2;
    else
      myY = myY + (int)(Math.random()*7)-4;
    
  }
  void show()
  {
    fill(myColor);
    ellipse(myX, myY, 10, 10);
    if (mouseX > myX && mouseY > myY)
      line(myX-5, myY-5, myX-20, myY-20);
    if (mouseX < myX && mouseY > myY)
      line(myX+5, myY-5, myX+20, myY-20);
    //if (mouseX > myX && mouseY < myY)
    
    //if (mouseX < myX && mouseY < myY)
  }
}