PImage alma;
color hatter;
void setup () {
  size(500, 500);
  alma=loadImage("apple.png");
}

void draw() {
  hatter=color(50, 156, 200);
  background(hatter);
  image (alma, mouseX, mouseY, mouseX, mouseY);
}