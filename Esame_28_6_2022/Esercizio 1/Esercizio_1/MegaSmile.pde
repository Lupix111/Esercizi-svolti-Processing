class MegaSmile   extends Smile
{
  
  
  MegaSmile(float x, float y)
  {
    super(x,y);
    c=(255);
    vel=-vel;
  }
  
  void display()
  {
  ellipseMode(CORNER);
  noFill();
  stroke(c);
  strokeWeight(2);
  scale(1.5);
  ellipse(x,y,w,h);
  line(x+15,y+13,x+15,y+23);
  line(x+40,y+13,x+40,y+23);
  line(x+13,y+40,x+40,y+40);
  }
  
  void move()
    {
      x=x+vel;
      
      if(x>width)
      {
        x=0;
      }
      
      if(x<0)
      {
        x=width;
      }
    }   
    
}
