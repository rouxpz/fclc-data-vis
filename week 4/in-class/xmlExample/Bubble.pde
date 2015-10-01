class Bubble {
  
  float x;
  float y;
  float d;
  String label;
  
  Bubble() {
     
  }
  
  void display() {
    stroke(0);
    fill(200);
    ellipse(x, y, d, d);   
  }
  
  void rollover() {
    if (dist(mouseX, mouseY, x, y) < d/2) {
      fill(0);
      text(label, x, y);
    }
    
  }
  
  
}