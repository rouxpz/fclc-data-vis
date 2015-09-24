int [] r = {20, 40, 60, 80, 100};
int [] x = new int[5];

void setup() {
  size(500, 500);
  
  for (int i = 0; i < 5; i++) {
    x[i] = 100*i;
  }
  
}

void draw() { 
  background(255);
  for (int i = 0; i < 5; i++) {
    ellipse(x[i], height/2, r[i], r[i]);   
  }  
}