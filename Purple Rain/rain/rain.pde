//(138,43,226)
// (230,230,250) background

Drop[] drops = new Drop[800];

void setup()
{
  
  //size(640,360);
  fullScreen();
  for(int i = 0; i < drops.length; i++)
  {
  drops[i] = new Drop();
  }
}

void draw()
{
  
  background(230,230,250);
  for(int i = 0; i < drops.length; i++)
  {
  drops[i].fall();
  drops[i].show();
  }
}
