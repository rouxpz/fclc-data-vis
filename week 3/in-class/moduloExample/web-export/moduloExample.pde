void setup() {
  size(400, 300);
  smooth();
}

void draw() {
  background(0);
  stroke(255);

  for (int x = 0; x < width; x+=20) {
    for (int y = 0; y < height; y+=20) {

      if (mouseX >=x && mouseX <= x+20 && mouseY >=y && mouseY <= y+20) {
        fill(255);
      }
        else if ((x % 40 != 0 && y%40 !=0) || (x % 40 == 0 && y%40 == 0)) {
          fill(127);
        } else {
          fill(45);
        }
        rect(x, y, 20, 20);
      }
  }
}

