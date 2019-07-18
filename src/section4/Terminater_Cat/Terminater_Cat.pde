PImage catPic;
int X = 514;
int Y = 332;
int acceleration = 5;
void setup(){
  size(800, 600);
  catPic = loadImage("cat.jpg");

                catPic.resize(width, height);

background(catPic);


}
void keyPressed() {
Y+=2*acceleration;
X+=2*acceleration;
}

void draw(){
 noStroke();
  if(mousePressed){

println("Mouse’s x-position: " + mouseX + "\n" + "Mouse’s y-position: " + mouseY + "\n");}
ellipse(X-160, Y+10, 25, 25);
ellipse(X, Y, 25, 25);
fill (0, 255, 0);

if (X >= 800 && Y>= 600){
  background(catPic);
  X = 514;
  Y = 332;
}
}
