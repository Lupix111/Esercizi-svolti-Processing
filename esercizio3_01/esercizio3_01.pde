size(500,500);
background(255);
int a=1;
int b=1;
ellipseMode(CENTER);

for(int x=500;x>1;x-=50)
{
  a=x;
  b=x;
 ellipse(width=(x/2),height/2,a,b);
}

line(0,height/2,1000,height/2);
