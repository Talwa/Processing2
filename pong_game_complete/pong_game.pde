int x, y, w, h, speedX, speedY;
int paddleXL, paddleYL, paddleW, paddleH, paddleS;
int paddleXR, paddleYR;

boolean upL, downL;
boolean upR, downR;

color Color = color(225);

int scoreL=0;
int scoreR=0;
int winScore=5;

void setup() {
  size(500, 500);
  
  textAlign(CENTER, CENTER);

  x=width/2;
  y=height/2;
  w=20;
  h=20;
  speedX=2;
  speedY=3;

  paddleXL=30;
  paddleYL=height/2;
  paddleXR=width-40;
  paddleYR=height/2;
  paddleW=20;
  paddleH=150;
  paddleS=5;

  textSize(30);
}

void draw() {
  background(0);
  drawBall();
  moveBall();
  bounce();

  drawPaddle();
  movePaddle();
  outPaddle();
  contactPaddle();

  scores();
  gameOver();
}

void drawBall() {
  noStroke();
  fill(225, 0, 0);
  ellipse(x, y, w, h);
}

void moveBall() {
  x = x+speedX;
  y = y+speedY;
}

void bounce() {
  if (x>width - w/2) {
    speedX = -speedX;
    scoreL = scoreL+1;
  } else if (x<0+w/2) {
    speedX = -speedX;
    scoreR = scoreR+1;
  }
  if (y>height - h/2) {
    speedY = -speedY;
  } else if (y<0+h/2) {
    speedY = -speedY;
  }
}

void drawPaddle() {
  rectMode(CENTER); 
  noStroke();
  fill(Color);
  rect(paddleXL, paddleYL, paddleW, paddleH);
  rect(paddleXR, paddleYR, paddleW, paddleH);
}

void movePaddle() {
  if (upL) {
    paddleYL = paddleYL-paddleS;
  }
  if (downL) {
    paddleYL = paddleYL+paddleS;
  }
  if (upR) {
    paddleYR = paddleYR-paddleS;
  }
  if (downR) {
    paddleYR = paddleYR+paddleS;
  }
}

void outPaddle() {
  if (paddleYL-paddleH/2<0) {
    paddleYL = paddleYL+ paddleS;
  }
  if (paddleYL+paddleH/2>height) {
    paddleYL = paddleYL-paddleS;
  }
  if (paddleYR-paddleH/2<0) {
    paddleYR = paddleYR+ paddleS;
  }
  if (paddleYR+paddleH/2>height) {
    paddleYR = paddleYR-paddleS;
  }
}

void contactPaddle() {
  if (x-w/2 < paddleXL+paddleW/2 && y-h/2 < paddleYL+paddleH/2 && y+h/2 > paddleYL - paddleH/2) {
    if (speedX<0) {
      speedX =-speedX;
    }
  } else if (x+w/2 > paddleXR-paddleW/2 && y-h/2 < paddleYR+paddleH/2 && y+h/2 > paddleYR - paddleH/2) {
    if (speedX>0) {
      speedX =-speedX;
    }
  }
} 

void keyPressed() {
  if (key == 'w' || key == 'W') {
    upL=true;
  }
  if (key == 's' || key == 'S') {
    downL=true;
  }
  if (keyCode == UP) {
    upR=true;
  }
  if (keyCode == DOWN) {
    downR=true;
  }
}


void keyReleased() {

  if (key == 'w' || key == 'W') {
    upL=false;
  }
  if (key == 's' || key == 'S') {
    downL=false;
  }
  if (keyCode == UP) {
    upR=false;
  }
  if (keyCode == DOWN) {
    downR=false;
  }
}

void scores() {
  fill(225, 0, 0);
  text(scoreL, 100, 50);
  text(scoreR, width-100, 50);
}

void gameOver() {
  if(scoreL == winScore || scoreR == winScore){
    gameOverPage();
  }
}

void gameOverPage() {
  setup();
  speedX= 0;
  speedY =0;
  
  fill(225, 0, 0);
  text("GAME OVER", width/2, height/2-70);
  text("Click to play again", width/2, height/2-40);
  
  if(mousePressed) {
    scoreR=0;
    scoreL=0;
    speedX=2;
    speedY=3;
  }
  
  
}