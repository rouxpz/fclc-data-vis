ArrayList<Ball> balls = new ArrayList<Ball>();

void setup() {
  size(500, 500);
  smooth(); 
}

void draw() {
  
  background(255);
  
  for (int i = 0; i < balls.size(); i++) {
    balls.get(i).display();
    balls.get(i).move();
    balls.get(i).bounce();
  }

}

void mousePressed() {
  Ball b = new Ball();
  balls.add(b);
  
}