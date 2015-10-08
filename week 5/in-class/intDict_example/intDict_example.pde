JSONObject full;
JSONArray astro;

IntDict ships;

void setup() {
  ships = new IntDict();
  
  full = loadJSONObject("http://api.open-notify.org/astros.json");
  astro = full.getJSONArray("people");
  
  for (int i = 0; i < astro.size(); i++) {
    
    JSONObject person = astro.getJSONObject(i);
    
    String name = person.getString("name");
    String craft = person.getString("craft");
    
    println(name + " is on " + craft);
    
    ships.increment(craft);
  }
  
  for(String k : ships.keys()) {
    println("There are " + ships.get(k) + " astronauts on " + k + ".");
  }
}

void draw() {
  
  
  
}