class Cross
{
  
  Cross(float x, float y)
  {
    stroke(#F0A0D5);
    line(x,y,x+10,y+10);
    line(x+10,y,x,y+10);
    
  }
}




size (500,400);
background(0);

for (int i=0;i<width;i+=20)
{
 for(int j=0;j<height;j+=20)
 {
   Cross C=new Cross(i+3,j+4);
 }
}
