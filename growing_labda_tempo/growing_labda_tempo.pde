class Labda {
  float x;
  float y;
  float sugar;
  color szin;

  void rajzold_ki() {
    noStroke();
    fill(szin);
    ellipse(x, y, 2*sugar, 2*sugar);
  }

  void le(float s) {
    y=y+s;
  }

  void jobbra(float v) {
    x=x+v;
  }


  boolean bent_van() {
    if (y>0+sugar && x>0+sugar && y<height-sugar && x<width-sugar) {
      return true;
    } else {
      return false;
    }
  }

  void grow(float f) {
    sugar=sugar+f;
  }
}

Labda sarga_labda = new Labda();
Labda feher_labda = new Labda();
Labda fekete_labda = new Labda();
void setup() {
  size(500, 500);

  feher_labda.x=200;
  feher_labda.y=200;
  feher_labda.sugar=50;
  feher_labda.szin=color(#ffffff);

  sarga_labda.x=100;
  sarga_labda.y=100;
  sarga_labda.sugar=90;
  sarga_labda.szin=color(#FACE56);

  fekete_labda.x=300;
  fekete_labda.y=300;
  fekete_labda.sugar=20;
  fekete_labda.szin=color(0, 0, 0);
}

void draw() {
  background(#AFACA3);
  sarga_labda.rajzold_ki();
  feher_labda.rajzold_ki();
  fekete_labda.rajzold_ki();

  //fekete_labda.le();
  //feher_labda.jobbra();
  //sarga_labda.atlo();

  if (feher_labda./*x<450*/bent_van()) {
    feher_labda.jobbra(2);
  }

  if (fekete_labda./*y<480*/bent_van()) {
    fekete_labda.le(2);
  }

  if (sarga_labda./*x<400*/bent_van()) {
    sarga_labda.le(2);
    sarga_labda.jobbra(1);
  }

  if (feher_labda.bent_van()) {
    feher_labda.grow(1);
  }
  
  if (fekete_labda.bent_van()){
    fekete_labda.grow(2);
  }
  
  if (sarga_labda.bent_van()){
    sarga_labda.grow(1);
  }
}