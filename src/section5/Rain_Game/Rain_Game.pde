int score = 1;
int randomNumber = 400;
int rainY = 0;
void setup(){
 size(800, 600); 
}

void draw(){
  background(100, 200, 200);
  fill(0, 0, 200);
  noStroke();
  ellipse(randomNumber, rainY, 5, 50);
  fill(255, 0, 0);
   rect (mouseX, 500, 80, 70);
  rainY += 3;
   if (rainY > 600) {
   rainY = 0; 
   randomNumber = (int) random(800);
  }
  checkCatch();
   fill(0, 0, 0);
    textSize(16);
    text("Score: " + score, 20, 20);
}

void checkCatch(){
         if (randomNumber > mouseX && randomNumber < mouseX + 80 && rainY >= 500 && rainY <= 580){
            score++;
            rainY = 0;
         } else if (rainY >= 600) { 
            score--;
        println("Your score is now: " + score);
         }
         }
    
