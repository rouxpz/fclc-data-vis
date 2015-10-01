class Ball {
  
  float x;
  float y;
  float d;
  float speed;
  int c;
  
  Ball() {
    
    x = random(width);
    y = 0;
    d = random(5, 30);
    c = round(random(255));
    speed = 2;
  }
  
  void display() {
      stroke(0);
      fill(c);
      ellipse(x, y, d, d);
  }
  
  void move() {
    y = y + speed;
  }
  
  void bounce() {
    if (y > height || y < 0) {
      speed = speed * -1;
    }
  }
   
}