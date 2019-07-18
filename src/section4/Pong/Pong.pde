int score = 0;
int speedLftRt = 2;
int speedUpDown = 2;
int x = 400;
int y = 300;
void setup(){
size (800, 600);
 background(0, 0, 0);
}


void draw(){
  background(0, 0, 0);
  ellipse(x, y, 30, 30);
  fill (255, 255, 255);
  x += speedLftRt ;
  y += speedUpDown;
  //Boundries for X axis
  if (x >= 800){
    speedLftRt = -2;
  }
  if (x <= 0){
    speedLftRt = 2;
  }
  //Boundries for Y axis
  if (y >= 600){
    score--;
    y = 0;
  }
  if (y <= 0){
    speedUpDown = 2;
  }
  //Paddle code
  rect(mouseX, 570, 70, 10);
  checkBounce();
  text("Score: " + score, 20, 20);
}


boolean checkBounce(){
  if (x > mouseX && x < mouseX + 70 && y > 570 && y < 580){
    speedUpDown = -2;
    score++;
  }
  return true;
}
