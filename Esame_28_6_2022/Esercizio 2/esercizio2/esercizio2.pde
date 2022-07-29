PImage I, I2;

void setup()
{
  size(512,256);
  I = loadImage("lena.png");
  I.resize(256,256);
  I2=wow(I);

}

void draw()
{
  background(0);
  image(I,0,0);
  image(I2,256,0);
}

PImage wow(PImage I){
  PImage tmp =  I.copy();
  PImage alto;
  PImage basso;
  PImage destra=tmp.get(128,0,256,256);
  destra.set(128,0,tmp.get(128,0,256,256));
  alto=destra.get(0,0,256,128);
  basso=destra.get(0,128,256,256);
  
  alto.loadPixels();
  basso.loadPixels();
  
  for(int i=0;i<alto.pixels.length;i++)
  {
      color c= color(255-red(alto.pixels[i]),255-green(alto.pixels[i]),255-blue(alto.pixels[i]));
      alto.pixels[i]=c;
  }
  
  for(int i=0;i<basso.pixels.length;i++)
  {
      color c=color(red(basso.pixels[i]),green(basso.pixels[i]),0);
      basso.pixels[i]=c;
  }
  basso.updatePixels();
  
  
  alto.updatePixels();
  destra.set(0,0,alto);
  destra.set(0,128,basso);

  return destra;
}






void keyPressed()
{
  if(key=='r' || key=='R')
  {
    setup();
  }
}
