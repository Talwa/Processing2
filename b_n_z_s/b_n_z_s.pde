int r=5;

class littleDot{
  void draw_it(){
  fill(0);
  ellipse(10,30,10,10);
  }
}

littleDot dots[]= new littleDot[100];

void setup() {
  size(500, 500);

  while (r<200) {
    drawCircle();
    r=r+5;
  }
  for(int x=0; x<100; x=x+50){
dots[x]= new littleDot();
  }
  //pontokat egymástól 50 pixel távolságra egy sorban*/
}

void draw() { 
  
  //if
  //pont addig mozog amíg a széléhez nem ér
}

void drawCircle() {
  noFill();
  ellipse(width/2, height/2, r, r);
  //r=r+5;
}