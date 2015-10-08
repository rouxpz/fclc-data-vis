PImage img;
JSONObject show;

String seriesName = "how i met your mother";
String season = "4";
String episode = "3";

void setup() {
  size(500, 500);
  String url = "http://www.omdbapi.com/?t=" + seriesName + "&Season=" + season + "&Episode=" + episode;
  url = url.replace(" ", "%20");
  show = loadJSONObject(url);
  
  String title = show.getString("Title");
  String plot = show.getString("Plot");
  String posterUrl = show.getString("Poster");
  
  println(title);
  println(plot);
  println(posterUrl);
  
  img = loadImage(posterUrl);
}

void draw() {
  image(img, 0, 0);
  
}