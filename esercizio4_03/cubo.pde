class cubo
{
  int x,y,dim;
  int vita;
  cubo(int _x, int _y, int _dim,int _vita)
  {
    x=_x; y=_y; dim=_dim;vita=_vita;
  }
  
  boolean fine()
  {
    vita--;
    if(vita<0)
    {
    return true;
    }
    else
    {
    return false;
    }
    
  }
  
  void dis()
  {
    fill(255);
    stroke(0,vita);
    strokeWeight(2);
    rect(x,y,dim,dim);
  }
}
