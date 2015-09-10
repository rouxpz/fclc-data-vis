//simple button that toggles on and off.

boolean on; //declare your boolean variable. this keeps track of whether your button is on or off.

void setup() {
  size(400, 300);
  smooth();
  
  //initialize your boolean variable. here, we're saying that it starts at false, meaning the button is off.
  on = false;
}

void draw() {
  background(0);
  stroke(255);
  
  
  if (on == true) { //if on is true...
    fill(100, 255, 50); //set the fill to green.
  } else { //otherwise, if on is false...
    fill(175); //set the fill to gray.
  }
  
  //draw your rectangle
  rectMode(CENTER);
  rect(width/2, height/2, 100, 100);
  
}

//whenever the mouse is clicked and is within the rectangle, the button state (on or off) toggles.
void mousePressed(){
  if (mouseX >= width/2-50 && mouseX <= width/2+50 && mouseY >= height/2-50 && mouseY <= height/2+50) {
    on = !on; //this checks what the boolean variable is set to right now, and then sets it to the opposite (ie true to false, and false to true)
  }  
}
