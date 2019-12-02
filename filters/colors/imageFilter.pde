PImage face;
int colorNumber;

void setup(){
  size(600, 420);
  face = loadImage("../showPictures/data/pic0.png");
  colorNumber = 0;
}

void draw(){
  image(face, 0, 0);
}

void keyPressed(){
  if(key == 'f'){
    filterTint(colorNumber);
    
    if(colorNumber < 3){  
      colorNumber++;
    }
    else {
      colorNumber = 0;
    }
  }
}



void filterTint(int tintColor){
  // Blanco
  if(tintColor == 0){
    tint(255, 255, 255, 255);
  }
  // Rojo
  if(tintColor == 1){
    tint(255, 0, 0, 255);
  }
  //Verde
  if(tintColor == 2){
    tint(0, 255, 0, 255);
  }
  //Azul
  if(tintColor == 3){
    tint(0, 0, 255, 255);
  }  
}