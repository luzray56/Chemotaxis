Bacteria [] bob;
int lowell = 0;
void setup()
{
  textAlign(CENTER);
  size(600,600);
  bob = new Bacteria[35];
  for(int i=0; i < bob.length; i++)
    bob[i] = new Bacteria();
}
void draw()
{
  background(0);
  for(int i=0; i < bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
  }
  fill(255,255,255);
  ellipse(mouseX, mouseY-10, 50, 50);
  fill(131,18,6);
  if (lowell == 0)
    text("5.0 GPA", mouseX+2, mouseY-5);
  if (lowell == 1)
    text("Stanford", mouseX+2, mouseY-5);
  if (lowell == 2)
    text("1600", mouseX+2, mouseY-5);
  if (lowell == 3)
    text("89.9", mouseX+2, mouseY-5);
  if (lowell == 4)
    text("Sleep", mouseX+2, mouseY-5);
  if (lowell == 5)
    text("CCSF", mouseX+2, mouseY-5);
}
void mousePressed()
{
  lowell = (int)(Math.random()*6);
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
    if (lowell == 0 || lowell == 1 || lowell == 2)
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
    if (lowell == 3 || lowell == 4 || lowell == 5)
    {
      if (mouseX > myX)
        myX = myX + (int)(Math.random()*7)-4;
      else
        myX = myX + (int)(Math.random()*7)-2;
      if (mouseY > myY)
        myY = myY + (int)(Math.random()*7)-4;
      else
        myY = myY + (int)(Math.random()*7)-2;
    }
  }
  void show()
  {
    fill(myColor);
    stroke(myColor);
    ellipse(myX, myY, 10, 10);
    if (lowell == 0 || lowell == 1 || lowell == 2)
    {
      if (mouseX > myX && mouseY > myY)
        line(myX-5, myY-5, myX-20, myY-20);
      if (mouseX < myX && mouseY > myY)
        line(myX+5, myY-5, myX+20, myY-20);
      if (mouseX > myX && mouseY < myY)
        line(myX-5, myY+5, myX-20, myY+20);
      if (mouseX < myX && mouseY < myY)
        line(myX+5, myY+5, myX+20, myY+20);
    }
        if (lowell == 3 || lowell == 4 || lowell == 5)
    {
      if (mouseX < myX && mouseY < myY)
        line(myX-5, myY-5, myX-20, myY-20);
      if (mouseX > myX && mouseY < myY)
        line(myX+5, myY-5, myX+20, myY-20);
      if (mouseX < myX && mouseY > myY)
        line(myX-5, myY+5, myX-20, myY+20);
      if (mouseX > myX && mouseY > myY)
        line(myX+5, myY+5, myX+20, myY+20);
    }
  }
}