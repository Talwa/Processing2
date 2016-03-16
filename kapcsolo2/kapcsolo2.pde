void setup() {
  size(500, 500);
}

int bg = #000000;
int r = 50;

void draw() {
  background(bg);
  ellipseMode(CENTER);

  //}

  //void mouseClicked(){
  if (abs(250-mouseX) < r && abs(400-mouseY) < r) {
    bg = #F5E39C;
    fill(#2A60F2);
    ellipse(250, 400, r, r);
  } else {
    bg = #000000;
    fill(#F22A44);
    ellipse(250, 400, r, r);
  }
}