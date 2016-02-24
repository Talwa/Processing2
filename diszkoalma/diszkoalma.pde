PImage alma;
color hatter;
void setup () {
  size(500, 500);
  alma=loadImage("apple.png");
}

void draw() {
  hatter=color(mouseX, mouseY, (mouseX-mouseY)/2);
  background(hatter);
  image (alma, mouseX, mouseY, 100, 100);
}