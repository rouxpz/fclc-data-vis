XML data;
ArrayList<Bubble> bubbles = new ArrayList<Bubble>();

void setup() {
  size(640, 480);
  smooth();
  
  loadData();
  
}

void draw() {
  background(255);
  for (int i = 0; i < bubbles.size(); i++) {
    bubbles.get(i).display();
    bubbles.get(i).rollover();   
  }
  
}

void loadData() {
  data = loadXML("data.xml");
  
  XML[] children = data.getChildren("bubble");
  
  for (int i = 0; i < children.length; i++) {
    
    XML labelContent = children[i].getChild("label");
    XML diameterContent = children[i].getChild("diameter");
    XML pos = children[i].getChild("position");
    
    Bubble b = new Bubble();
    b.label = labelContent.getContent();
    b.d = diameterContent.getFloatContent();
    
    b.x = pos.getInt("x");
    b.y = pos.getInt("y");
    
    bubbles.add(b);
  }
  
}