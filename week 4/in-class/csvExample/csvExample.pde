Table data;

ArrayList <Album> albums = new ArrayList<Album>();

void setup() {

  size(600, 600);

  data = loadTable("beatles.csv", "header");

  for (int i = 0; i < data.getRowCount (); i++) {
    TableRow row = data.getRow(i);

    Album a = new Album();

    a.title = row.getString("Name");
    a.copies = row.getInt("Copies Sold");
    a.year = row.getString("Year");

    a.d = map(a.copies, 0, 11000000, 0, 100);
    a.x = i*60;
    a.y = height/2;
    albums.add(a);
  }
}

void draw() {

  background(50);
  for (Album a : albums) {
      a.display();
      a.rollover();
  }
}