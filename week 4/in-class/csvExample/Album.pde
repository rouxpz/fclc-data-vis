class Album {
  
  String title;
  int copies;
  String year;
  
  float x;
  float y;
  float d;
  
  Album () {
    
  }
  
  void display() {
    fill(255, 100, 65, 150);
    ellipse(x, y, d, d);    
  }
  
  void rollover() {
    if (dist(mouseX, mouseY, x, y) <= d/2) {
      fill(255);
      text(title, x, y);
    }
    
  }
  
  
}