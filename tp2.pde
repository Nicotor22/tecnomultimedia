// https://www.youtube.com/watch?v=a-ide0N-lg0

float piezas=2;
float escena=1;
PImage Reset;

void setup(){
  size(700,700);
  Reset = loadImage("R.jpg");

}

void draw(){
  if(escena==1){
  crearPantallas();
  lente(mouseX,mouseY);
  }
  if(escena==2){
    movibles();
    image(Reset,650,650,50,50);
  }
}

void mouseClicked(){
  if(escena==1){
    escena++;
  }
  if (mouseX > 650 && mouseX <700){
    if (mouseY > 650 && mouseY <700){
      escena=1;
    } 
  }
}
