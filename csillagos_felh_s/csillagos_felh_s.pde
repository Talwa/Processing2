int szamlalo;

class Cloud {
  float x=0;
  float y=0;
  float r1=0;
  float r2=0;
  float s=0;

  void legyel() {
    x= random(0, 400);
    y= random(0, 400);
    r1= random(100, 200);
    r2= random(30, 50);
    s= random(-2,2);
  }
  void draw_out() {
    fill(128, 138, 198, 115);
    noStroke();
    ellipse(x, y, r1, r2);
  }

  void swim(){
   x=x+s;
   
   }
}

class Csillag {
  float x=0;
  float y=0;
  float r=0;

  void ragyogj() {
    fill(#F7F7A2);
    noStroke();
    ellipse(x, y, r, r);
  }

  void szuless() {
    x=random(0, width);
    y=random(0, height);
    r=random(1, 5);
  }
}

class Hold {
  float x;
  float y;
  float r;

  void vilagits() {
    fill(#F7F7A2);
    noStroke();
    ellipse(x, y, r*2, r*2);
    fill(#081876);
    ellipse(x+r*0.7, y-r*0.7, 2*r, 2*r);
  }

  void mozogj() {
    x=x+0.5;
  }
}

Csillag csillagok[] = new Csillag[1000];


Hold hold=new Hold();

Cloud cloud[] = new Cloud[4];

void setup() {
  size(500, 500);







  szamlalo =0;
  while (szamlalo<1000) {
    csillagok[szamlalo]= new Csillag();
    csillagok[szamlalo].szuless();
    szamlalo=szamlalo+1;
  }

  szamlalo=0;
  while (szamlalo<4) {
    cloud[szamlalo]= new Cloud();
    cloud[szamlalo].legyel();
    szamlalo=szamlalo+1;
  }

  hold.x=50;
  hold.y=75;
  hold.r=40;
}

void draw() {
  background(#081876);
  hold.vilagits();
  hold.mozogj();
  //cs1.szuless();
  //cs2.szuless();
  //cs3.szuless();
  


  //csillagok[1].ragyogj();
  szamlalo = 0;
  while (szamlalo<1000) {
    csillagok[szamlalo].ragyogj();
    szamlalo=szamlalo+1;
  }

  szamlalo=0;
  while (szamlalo<4) {
    cloud[szamlalo].swim();
    cloud[szamlalo].draw_out();
    szamlalo=szamlalo+1;
    
  }
      
}