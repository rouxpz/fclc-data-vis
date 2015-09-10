//simple slider.
//drag your mouse along the rectangle to make the circle grow and shrink.

//declare variables for your circle diameter, rectangle x and y, and rectangle width and height
float d;
float sw, sh;
float sx, sy;

//declare a boolean that determines whether or not the mouse is being dragged
boolean dragging;

void setup() {
  size(640, 480);
  smooth();
  
  //initialize all your values
  d = 10;
  sw = 20;
  sh = 440;
  sx = 600;
  sy = 20;

  //initialize dragging to be false
  dragging = false;
}

void draw() {
  
  //draw your shapes with initial values
  background(255);
  noStroke();
  fill(0);
  rect(sx, sy, sw, sh);

  fill(255, 0, 0);
  ellipse(width/2, height/2, d, d);

  //if you are dragging the mouse...
  if (dragging == true) {
    //and your mouse is inside the rectangle...
    if (mouseX >= sx && mouseX <= sx+sw && mouseY >= sy && mouseY <= sy + sh) {
      
      //create a new variable here that maps where the mouse is on the rect to the max diameter you want for the circle
      float val = map(mouseY, 0, 440, 10, 200);
      
      //set the diameter equal to your new variable
      d = val;
    }
  }
  
  //determines whether or not dragging is true or false
  if (mousePressed) {
    dragging = true;
  } else {
    dragging = false;
  }
  
  println(dragging);
}
