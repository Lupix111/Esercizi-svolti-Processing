class BlackHole
{
  float x,y,d;
  
  BlackHole()
  {
  
  }
  
  void display(float x, float y,float d )
  {
   this.x=x;
   this.y=y;
   this.d=d;
   noStroke();
   fill(0);
   ellipse(x,y,d,d);
  }
  
}
