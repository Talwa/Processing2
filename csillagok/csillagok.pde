size(800, 800);
background(0, 0, 0);
int szamlalo= 0;
while (szamlalo<1000) {
  fill(#FFFA93);
  ellipse(random(0, 800), random(0, 800), random(2,5), random(2,5));
  szamlalo=szamlalo+1;
}