class Asteroid
{
  float x,y,d;
  
  Asteroid(float x, float y, float d)
  {
   this.x=x;
   this.y=y;
   this.d=d;
  }
  
  void display()
  {
   noStroke();
   fill(#A2581A);
   ellipse(x,y,d,d);
  }
  
}
