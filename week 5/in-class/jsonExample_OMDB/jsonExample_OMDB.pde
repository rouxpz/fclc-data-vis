JSONObject show;

String seriesName = "how i met your mother";
String season = "3";
String episode = "3";

void setup() {
  String url = "http://www.omdbapi.com/?t=" + seriesName + "&Season=" + season + "&Episode=" + episode;
  url = url.replace(" ", "%20");
  show = loadJSONObject(url);
  
  String title = show.getString("Title");
  String plot = show.getString("Plot");
  
  println(title);
  println(plot);
}

void draw() {
  
  
}