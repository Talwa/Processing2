PImage alma;

void setup () {
  size(500, 500);
  alma=loadImage("apple.png");
}

void draw() {
  background(255,255,255);
  image (alma, mouseX, mouseY, 100, 100);
}