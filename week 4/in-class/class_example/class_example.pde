Ball b;

void setup() {
  size(500, 500);
  smooth();
  
  b = new Ball();
  
}

void draw() {
  
  background(255);
  
  b.display();
  b.move();
  b.bounce();
}