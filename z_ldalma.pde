PImage alma;
color hatter;


float x,y;
float vX=5;
float vY=0;
float hatar=150;


void setup(){
  size(700,700);
  alma=loadImage("http://www.consumerreports.org/content/dam/cro/news_articles/health/CRO_Health_CROH_May_Whole_Green_Apple_03-15.png");
  x=hatar;
  y=hatar;
}


void draw(){
  hatter=color(255,255,255);
  background(hatter);
  imageMode(CENTER);
  image(alma,x,y,300,220);
  x=x+vX; y=y+vY;
  
  /*if(x>width-hatar && x>width/2 && y<height/2){
    vX=0;
    vY=5;
  }
  
    if(y>height-hatar && y<height/2 && x>width/2){
    vX=-5;
    vY=0;
  }
  
  if(x<hatar && x<width/2 && y>height/2){
    vX=0;
    vY=-5;
  }
  
  if(y>hatar && y>height/2 && x<width/2){
    vX=5;
    vY=0;
  }*/
  
  if(x>width-hatar){
    vX=0;
    vY=5;
  }
  
    if(y>height-hatar){
    vX=-5;
    vY=0;
  }
  
  if(x<hatar){
    vX=0;
    vY=-5;
  }
  
  if(y<hatar && x<hatar){
    vX=5;
    vY=0;
  }
}