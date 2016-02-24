PImage alma;
PImage bg;
float x;
float y;
void setup () {
  size(248, 247);
  bg = loadImage("apple.png");
  alma = loadImage("apple.png");
  y=0;
}

void draw() {
  background(bg);
  image(alma, 0, y, 50, 50);
  image (alma, 50, y, 50, 50);
  image(alma, 100, y, 50, 50);
  image(alma, 150, y, 50, 50);
  image(alma, 200, y, 50, 50);
  y=y+1;
}