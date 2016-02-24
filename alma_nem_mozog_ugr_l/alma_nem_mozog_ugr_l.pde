PImage alma;

void setup () {
  size(500, 500);
  alma=loadImage("apple.png");
}

void draw() {
  background(255,255,255);
  image (alma, 100, 100, mouseX, mouseY);
}