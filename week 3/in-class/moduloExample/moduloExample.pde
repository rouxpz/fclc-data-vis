void setup() {
  size(400, 300);
  smooth();
}

void draw() {
  background(0);
  stroke(255);

  for (int x = 0; x < width; x+=20) { //for every x coordinate starting at 0 and ending with the width, spaced 20 pixels apart...
    for (int y = 0; y < height; y+=20) { //... we will look at every y coordinate, starting at 0 and ending at the height, and spaced 20 pixels apart

      //rollover. if the mouse is within the confines of any given rectangle, we will highlight it
      if (mouseX >=x && mouseX <= x+20 && mouseY >=y && mouseY <= y+20) {
        fill(255);
      } 
      
      //otherwise, if we determine that the remainders of x and y when divided by 40 (every other rect) are BOTH 0, or BOTH not 0, we color the rect with a lighter gray
      //modulo (%) divides the first number by the second number and returns the remainder.
      else if ((x % 40 != 0 && y%40 !=0) || (x % 40 == 0 && y%40 == 0)) {
        fill(127);
      } 
      
      //otherwise, fill with dark gray
      else {
        fill(45);
      }
      
      //draw a rectangle at each x and y location
      rect(x, y, 20, 20);
    }
  }
}
