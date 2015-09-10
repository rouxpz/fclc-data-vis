//loop through lines and animate them drawing on the screen

//declare endX variable
int endX;

void setup() {
  size(400, 300);
  smooth();
  
  //initialize endX to 0
  endX = 0;
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(2);
  
  //we are initializing this x variable in draw because we need it to reset to 0 on every frame!
  int x = 0;
  
  //while x is less than whatever endX is right now...
  while(x < endX) {
    line(x, 0, x, height); //draw a line using x
    x = x+20; //increment x by 20 and check the loop again
  }
  
  //checking to see where endX is on every frame
  if (endX >= width) { //if endX is greater than the width of the canvas...
    endX = 0; //reset it to 0
  } else {
    endX += 2; //otherwise increment by 2
  }

}