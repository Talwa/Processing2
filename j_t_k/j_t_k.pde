PImage bg;
boolean bent_van = false;

class Uto {
  float a;

  void rajzold() {
    noStroke();
    fill(#000000);
    rect(a, 405, 200, 20);
  }

  void jobbra() {
    a=a+10;
  }


  void balra() {
    a=a-10;
  }
}

class Labda {
  float x;
  float y;
  float r;

  void rajzold_ki() {
    noStroke();
    fill(#000000);
    ellipse(x, y, 2*r, 2*r);
  }

  void mozog() {
    y=y+2;
    x=x+2;
  }

  void vissza() {
    y=y-2;
    x=x-2;
  }

// boolean bent_van = false;
 
}


Labda black_labda = new Labda();
Uto uto =new Uto();

void setup() {
  size(600, 432);
  bg = loadImage("fuzet.jpg");

  black_labda.x=300;
  black_labda.y=20;
  black_labda.r=10;

  uto.a=300;
}

void draw() {
  background(bg);
  uto.rajzold();
  black_labda.rajzold_ki();
  if (bent_van){
    black_labda.mozog();
  }else{
    black_labda.vissza();
  }
}
  
  /*if ((black_labda.y>0+black_labda.r) && (black_labda.x>0+black_labda.r) && (black_labda.y<height-black_labda.r) && (black_labda.x<width-black_labda.r)) {
   black_labda.mozog();
   }else{
   black_labda.vissza();
   }*/


void keyPressed() {
  if (key == CODED) {
    if ((keyCode == RIGHT) && (uto.a<390)) {
      uto.jobbra();
    }
    if ((keyCode == LEFT) && (uto.a>10)) {
      uto.balra();
    }
  }
}