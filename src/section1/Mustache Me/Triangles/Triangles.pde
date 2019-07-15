PImage mustache;
  PImage facePic;

void setup() {
  facePic = loadImage("facePic.jpeg");
  size (1300, 800);
  facePic.resize(1300, 800);
  mustache = loadImage ("mustache1.png");
  
}
  
void draw()  {
  background(facePic);
  if (mousePressed) {
    image (mustache, mouseX, mouseY);
  }
}
