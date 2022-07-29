float r=0;

void setup(){
size(400,400);
ellipseMode(CENTER);
}

void draw(){
background(255);
translate(width/2,height/2);
rotate(r);
noStroke();

fill(#F78CCC);
ellipse(20,20,600,600);

fill(#8CF7EF);
ellipse(20,20,550,550);

fill(#F78CCC);
ellipse(20,20,500,500);

fill(#8CF7EF);
ellipse(20,20,450,450);

fill(#F78CCC);
ellipse(20,20,400,400);

fill(#8CF7EF);
ellipse(20,20,350,350);

fill(#F78CCC);
ellipse(20,20,300,300);

fill(#8CF7EF);
ellipse(20,20,250,250);

fill(#F78CCC);
ellipse(20,20,200,200);

fill(#8CF7EF);
ellipse(20,20,150,150);

fill(#F78CCC);
ellipse(20,20,100,100);

fill(#8CF7EF);
ellipse(20,20,50,50);

r+=0.05;
}
