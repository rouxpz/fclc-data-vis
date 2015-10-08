JSONObject full;

JSONArray astro;

void setup() {
  
  full = loadJSONObject("http://api.open-notify.org/astros.json");
  
  astro = full.getJSONArray("people");
  
  for (int i = 0; i < astro.size(); i++) {
    
    JSONObject person = astro.getJSONObject(i);
    
    String name = person.getString("name");
    String craft = person.getString("craft");
    
    println(name + " is on " + craft);
  }
  
}

void draw() {
  
  
  
}
