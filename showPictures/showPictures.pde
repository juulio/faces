
PImage img;
//File dir; 
//File [] files;
 
String[] filenames;
java.io.File folder;
 
void setup() {
  size(800, 450);
}

void draw() {
  folder = new java.io.File(dataPath(""));
  filenames = folder.list();
  //println(filenames.length + " jpg files in specified directory");
  for (int i = 0; i < filenames.length; i++) {
    println(filenames[i]); 
  }
  
  img = loadImage("data/pic0.png");
  image(img, 0, 0);
 
}