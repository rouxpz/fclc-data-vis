class Ball {
  
  float x;
  float y;
  float d;
  float speed;
  int c;
  
  Ball(float tempX, float tempD, float tempSpeed, int tempC) {
    
    x = tempX;
    y = 0;
    d = tempD;
    c = tempC;
    speed = tempSpeed;
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