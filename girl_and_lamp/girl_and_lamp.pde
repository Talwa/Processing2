float kapcsolox=40;
float kapcsoloy=200;
float redx= 40;
float redy=230;
float yellowx=40;
float yellowy=260;
float bluex=40;
float bluey=290;
float r=20;
boolean lampa_on=false;
PImage bg;

void setup() {
  size (600, 758);
  bg = loadImage("lany.jpg");
}

void draw() {
  background(bg);
  noStroke();
  fill(#333333);
  ellipse(kapcsolox, kapcsoloy, r, r);
  fill(#ff0000);
  ellipse(redx, redy, r, r);
  fill(#FFEB4D);
  ellipse (yellowx, yellowy, r, r);
  fill(#1962FA);
  ellipse (bluex, bluey, r, r);

  if ((mousePressed) && (abs(kapcsolox-mouseX)<r) && (abs(kapcsoloy-mouseY)<r)) {
    lampa_on = true;
  }

  if ((mousePressed) && (lampa_on) && (abs(redx-mouseX)<r) && (abs(redy-mouseY)<r)) {
    fill(#ff0000, 20);
    triangle(300, -150, 0, 758, 600, 758);
  }

  if ((mousePressed) && (lampa_on) && (abs(yellowx-mouseX)<r) && (abs(yellowy-mouseY)<r)) {
    fill(#FFEB4D, 20);
    triangle(300, -150, 0, 758, 600, 758);
  }

  if ((mousePressed) && (lampa_on) && (abs(bluex-mouseX)<r) && (abs(bluey-mouseY)<r)) {
    fill(#1962FA, 20);
    triangle(300, -150, 0, 758, 600, 758);
  }

  /*if ((mousePressed) && (abs(kapcsolox-mouseX)<r) && (abs(kapcsoloy-mouseY)<r) && (lampa_on=true)) {
    lampa_on = false;
  }*/
} 