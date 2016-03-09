void setup() {
  size(500, 500);
}

int bg = #000000;
int r = 50;

void draw() {
  background(bg);
  ellipseMode(CENTER);
  fill(237, 41, 57);
  ellipse(250, 400, r, r);
//}

//void mouseClicked(){
  if (abs(250-mouseX) < r & abs(400-mouseY) < r) {
    bg = #F5E39C;
  } else {
    bg = #000000;
  }
}