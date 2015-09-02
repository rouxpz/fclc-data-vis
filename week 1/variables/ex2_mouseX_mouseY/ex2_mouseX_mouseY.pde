//setup runs once before program starts
void setup() {
  size(500, 500);
  smooth();
}

//draw loops endlessly until program is quit
void draw() {
  background(255);
  stroke(0);
  fill(150);
  ellipse(mouseX, mouseY, 50, 50); 
}
