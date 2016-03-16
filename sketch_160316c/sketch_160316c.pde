size(500,500);
int x=0;

while(x<500){
  fill(0,0,0);
  ellipse(x, 100, 50, 50);
  
  rect(200, x, 50, 50);
  x=x+200;
}