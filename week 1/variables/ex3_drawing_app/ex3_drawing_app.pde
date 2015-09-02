//background is in setup() so that it doesn't constantly refresh
void setup() {
  size(500, 500);
  smooth();
  background(255);
}

void draw() {
  
  //draws a continuous line between current mouse location and previous mouse location
  stroke(0);
  strokeWeight(3);
  line(mouseX, mouseY, pmouseX, pmouseY);
}

//clears the screen on a key press
void keyPressed() {
  background(255);
}
