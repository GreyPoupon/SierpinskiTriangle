public void setup()
{
  size(800, 800);
  background(0);
  stroke(0,0,255);
  frameRate(2);
}

public void draw()
{
  shapes(width/2, height/2, 400);
}

public void shapes(int x, int y, int len) 
{
  fill((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);
  triangle(x - len, y + len, x + len, y + len, x, y - len);
  if(len <= 20)
  {
    triangle(x - len, y + len, x + len, y + len, x, y - len);
  }
  else
  {
  	stroke((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);
  	shapes(x - len/2, y + len/2, len/2);
    stroke((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);
  	shapes(x + len/2, y + len/2, len/2);
  	stroke((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);
  	shapes(x, y - len/2, len/2);
  }	
}
