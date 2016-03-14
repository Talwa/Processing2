PImage pomegranate;

float x, y;
float sebX=20;
float sebY=0;
//float hatar=0;


void setup() {
  size(700, 700);
  pomegranate=loadImage("pomegranate.png");
 
}

int value1 = 20;
int value2 = -20;

void draw() {
  background(255, 255, 255);
  image(pomegranate, x, y, width/5, height/5);
  x=x+sebX; 
  y=y+sebY;

  if (x>550) {
    sebX=0;
    sebY=value1;
  }
  if (y>550) {
    sebX=value2;
    sebY=0;
  }

  if (x<0) {
    sebX=0;
    sebY=value2;
  }

  if (y<0 & x<250) {
    sebX=value1;
    sebY=0;
  }
}

void mouseClicked() {
  if (value1 == 20) {
    value1 = 5;
  } else {
    value1 = 20;
  }
  if (value2 == -20) {
    value2= -5;
  } else {
    value2 = -20;
  }
}