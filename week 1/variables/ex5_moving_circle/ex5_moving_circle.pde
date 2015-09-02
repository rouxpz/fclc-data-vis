//declare the variables
float x;
float y;

void setup() {
  size(500, 500);
  smooth();
  
  //initialize the variables
  x = 0;
  y = 0;
}

void draw() {
  background(255);
  stroke(0);
  fill(150);
  
  ellipse(x, y, 50, 50);
  
  //increment the variables so the circle moves
  x = x + 1;
  y = y + 1;
  
}
