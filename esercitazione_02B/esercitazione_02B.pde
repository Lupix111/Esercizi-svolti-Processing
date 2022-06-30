PImage I, I2, I3;

void setup()
{
  size(768,256);
  I = loadImage("lena.png");
  I.resize(256,256);
  I.filter(GRAY);
  image(I,0,0);
  
  int h, k;
  h = int(random(1,256));
  k = int(random(1,256));
  
  I2 = linee(I, h, k);
  I3 = linee(I,h,k,int(random(5,15)));
}

void draw()
{
  background(0);
  image(I,0,0);
  image(I2,256,0);
  image(I3,512,0);
}

PImage linee(PImage I, int h, int k){
  PImage tmp = I.copy();
  PImage c1 = createImage(1, tmp.height, RGB);
  
  c1.loadPixels();
  for(int i=0; i<c1.pixels.length; i++){
    c1.pixels[i] = color(#BF3ECE);
  }
  c1.updatePixels();
  
  tmp.set(h,0,c1);
  tmp.set(k,0,c1);
  
  PImage r1 = createImage(tmp.width, 1, RGB);
  r1.loadPixels();
  for(int i = 0; i<r1.pixels.length; i++){
    r1.pixels[i] = color(#BF3ECE);
  }
  r1.updatePixels();
  
  tmp.set(0,h,r1);
  tmp.set(0,k,r1);
  
  for(int x=0; x<tmp.width; x++){//diagonale principale
    tmp.set(x,x, color(255));
  }
  
  return tmp;
}

PImage linee(PImage I, int h, int k, int n){
  PImage tmp =  I.copy();
  
  for(int x=0; x<tmp.width; x++){
    for(int y=0; y<tmp.height; y++){
      
      PImage f = I.get(x-n/2, y-n/2, n, n);
      int max = max(f.pixels);
      
      tmp.set(x,y,max);
    }
  }
  
  tmp = linee(tmp, h, k);
  
  return tmp;
}




void keyPressed()
{
  if(key=='r' || key=='R')
  {
    setup();
  }
}
