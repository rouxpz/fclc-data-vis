PShape s;

void setup() {
  size(500, 500);
  s = loadShape("sample.svg");
  
}

void draw() {
  background(220);
  shape(s, 0, 0);
  
  
}