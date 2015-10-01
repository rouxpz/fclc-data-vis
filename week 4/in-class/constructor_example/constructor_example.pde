Ball b;
Ball b2;

void setup() {
  size(500, 500);
  smooth();
  
  b = new Ball(random(width), random(5, 50), 5, 150);
  b2 = new Ball(random(width), random(5, 50), 2, 25);
}

void draw() {
  
  background(255);
  
  b.display();
  b.move();
  b.bounce();
  
  b2.display();
  b2.move();
  b2.bounce();
}