PImage pomegranate;

float x, y;
float sebX=5;
float sebY=0;
//float hatar=0;


void setup() {
  size(700, 700);
  pomegranate=loadImage("pomegranate.png");
  // x=hatar;
  //y=hatar;
}

void draw() {
  background(255, 255, 255);
  //imageMode(CENTER);
  image(pomegranate, x, y, width/5, height/5);
  x=x+sebX; 
  y=y+sebY;

  if (x>550) {
    sebX=0;
    sebY=5;
  }
  if (y>550) {
    sebX=-5;
    sebY=0;
  }

  if (x<0) {
    sebX=0;
    sebY=-5;
  }
  
  if (y<0 & x<250) {
    sebX=5;
    sebY=0;
  }
  
}