int x = 0;
int y = 0;
int spacing = 30;
void setup()
{
//  size(600,600);
  fullScreen();
  background(0);
}

void draw()
{
  float a = random(2);
  
  if(a < 0.50)
  {
    stroke(255);
    strokeWeight(3);
    line(x,y+spacing,x+spacing,y);
  }
  else if(a < 1)
  {
    stroke(128);
    strokeWeight(2);
    line(x,y,x+spacing,y+spacing);
  }
  else if(a < 1.50)
  {
    stroke(128);
    strokeWeight(3);
    line(x,y+spacing,x+spacing,y+spacing);  
  }
  else
  {
    stroke(255);
    strokeWeight(2);
    line(x+spacing,y+spacing,x+spacing,y);
  }
  x = x + spacing;
  if(x > width)
  {
    x = 0;
    y = y + spacing;
    if(y > height)
    {
      y = 0;
      spacing = 0;
    }
  }  
}
