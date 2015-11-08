IntDict concordance;
String[] words;
String[] stop = {
  "the", "and", "of", ""
};

void setup() {
  concordance = new IntDict();

  String[] lines = loadStrings("junglebook.txt");
  String text = join(lines, " ").toLowerCase();

  words = split(text, " ");

  for (int i = 0; i < words.length; i++) {
    concordance.increment(words[i]);
  }

  concordance.sortValuesReverse();
  println(concordance);
}

void draw() {
}