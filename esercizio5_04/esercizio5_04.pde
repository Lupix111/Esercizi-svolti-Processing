float r=0;

void setup(){
size(500,500);
ellipseMode(CENTER);
}

void draw(){
background(255);
noFill();
strokeWeight(7);
translate(width/2,height/2);
rotate(r);
ellipse(0,0,200,200);
fill(0);
triangle(0,-95,85,40,-85,40);
r+=0.01;
}
