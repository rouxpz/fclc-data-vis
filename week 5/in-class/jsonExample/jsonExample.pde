JSONObject iss;

void setup() {
  
  iss = loadJSONObject("http://api.open-notify.org/iss-now.json");
  
  String message = iss.getString("message");
  JSONObject location = iss.getJSONObject("iss_position");
  
  float lat = location.getFloat("latitude");
  float lon = location.getFloat("longitude");
  
  println(lat + ", " + lon);
  
}

void draw() {
  
  
  
}
