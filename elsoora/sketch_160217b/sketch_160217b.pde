float meret=50;
void setup () {
  size(400, 400);
}

void draw() {
  fill (#FF3300);

  

  if (mousePressed) {
    meret=random(9,50);
    ellipse(mouseX, mouseY, meret, meret);
  }
  
}