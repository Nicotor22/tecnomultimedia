void crearPantallas(){
  int ajusteB=0;
  int ajusteN=0;
  int crecer=0;
  float col=250;
  Float m = map(col,0,mouseX,0,255);
  for(int i=1;i<19;i++){
    fill(0);
    rect(0+crecer,0+crecer,700-ajusteB,700-ajusteB);
    fill(m);
    rect(10+crecer,10+crecer,680-ajusteN,680-ajusteN);
    crecer=crecer+20;
    ajusteB=ajusteB+40;
    ajusteN=ajusteN+40;
  }
}

void lente (float X, float Y){
  fill(10,255,10,100);
  ellipse(X,Y,100,100);
  if(X>400||X<300){
    fill(10,255,10,100);
    ellipse(X,Y,100,100);
  }
  else
  fill(random(255),random(255),random(255),150);
  ellipse(X,Y,100,100);
}

void movibles(){
  background(0);
  int tam=250;
  for (int i=0; i<2; i++) {
    for (int j=0; j<2; j++) {
       for (int c=tam; c>0; c-=5) {
        float limiteX = mouseX; 
        float limiteY = mouseY; 
        float mX = map(c, tam, 0, i*tam+130, limiteX);
        float mY = map(c, tam, 0, j*tam+130, limiteY);
          fill (100, 0, 0, 300);
          ellipse (mX, mY, c, c);
      }
    }
  }
}
