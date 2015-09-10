//simple demo of if statements and conditionals.

void setup() {
  size(400, 400);
  smooth();
  
}

void draw() {
  
  background(0);
  noStroke();
  fill(127);
  
  if (mouseX >= width/2) { //if the mouse is more than halfway across the canvas...
    if (mouseY <= height/2) { //...and the mouse is in the top half of the canvas...
      rect(width/2, 0, width/2, height/2); //...draw a rectangle in the top left corner.
    } else { //otherwise, if the mouse is in the bottom half...
      rect(width/2, height/2, width/2, height/2); //...draw a rect in the bottom half of the corner.
    }
  } 
  
  else { //...otherwise, if the mouse is less than halfway across...
    if (mouseY >= height/2) { //...if the mouse is on the bottom half of the screen..
      rect(0, height/2, width/2, height/2); //...draw a rect in the bottom right corner.
    } else { ///otherwise, if the mouse is in the top half...
      rect(0, 0, width/2, height/2); //...draw a rect in the top right corner.
    }
  }
  
  //drawing lines to separate the quadrants.
  stroke(255);
  line(0, height/2, width, height/2);
  line(width/2, 0, width/2, height);  
}
