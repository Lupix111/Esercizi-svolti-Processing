size(750,400);
background(255);
int a=50;

ellipseMode(CENTER);

fill(255);
stroke(#F0A7E7);
strokeWeight(10);
for(int i=100;i>2;i-=15)
{
  ellipse(a+=(i+30),height/2,i,i);
}
