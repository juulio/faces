  
import processing.video.*;

Capture cam;
//PImage img;
//final int CAM_WIDTH = 320;
//final int CAM_HEIGHT = 240;
// macbook Air 2013 camera is 1280x720.
//CAM_WIDTH and CAM_HEIGHT must have a 16/9 aspect ratio

int picNumber;

void setup() {
  size(800, 450);
  picNumber = 0;
  
  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  }
  else {
    //println("Available cameras:");
    //for (int i = 0; i < cameras.length; i++) {
    //  println(cameras[i]); 
    //}
    
    cam = new Capture(this, 800, 450);
    //cam = new Capture(this, cameras[0]);
    cam.start();
  }
  //img = loadImage("pic.png");
}

void draw() {
  if (cam.available() == true) {
    cam.read();
  }
  //image(cam, 0, 0, CAM_WIDTH, CAM_HEIGHT);
  set(0, 0, cam);
 
}
  
void keyPressed(){
  if(key == 'a'){
    String fileName = "../showPictures/data/pic" + picNumber + ".png"; 
    save(fileName);
    picNumber++;
  }
}