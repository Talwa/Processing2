size(500, 500);
int x=0;
int y= 500;

while (x<500) {
  line(0, x, x, 500);
  line(x, 0, 500, x);
  line(x, 500, 500, y);
  //line(x, 500, y, 0);
  line(0, y, x, 0);
  x=x+10;
  y=y-10;
  
}