int a=255;
int b=70;
void setup(){
background(0);
size(1000,1000);
noLoop();
colorMode(RGB,255);
noStroke();
}


void draw(){
for(int x=0; x<1000;x+=b)
{
  for(int y=0;y<1000;y+=b)
  {
    fill(a);
    rect(y,x,b,b);
    a-=5;
    
  }
}

}
