//pelicula
PFont fuente;
PFont titulo;
PImage fondo;
int alto = 700;
int ancho = 700;
float posy=700;
int posx=700;
int escena=1;
int cont =0;
PImage steve;
PImage creeper;
PImage arana;
PImage enderman;
PImage zombie;
PImage aldeano;
PImage vex;
PImage piedra;

void setup(){
  size(700,700);
  fuente = createFont("minecraft.ttf",32);
  titulo = createFont("titulo.ttf",32);
  textFont(fuente);
  fondo = loadImage("tierra.jpg");
  steve = loadImage("steve.jpg");
  creeper = loadImage("creeper.jpg");
  arana = loadImage("araña.jpg");
  enderman = loadImage("enderman.jpg");
  zombie = loadImage("zombie.jpg");
  aldeano = loadImage("aldeano.jpg");
  vex = loadImage("vex.jpg");
  piedra = loadImage("piedra.jpg");
  image(fondo,0,0,alto,ancho);
  textAlign(CENTER);
  

}
void draw(){
  //titulo
  if (escena == 1){
    fill(255);
    image(fondo,0,0,alto,ancho);
    textFont(titulo,60);
    text("MINECRAFT",350,350);
    textFont(fuente,20);
    text("presione 's' para continuar",ancho-560,alto-680);
  }
  
  //personajes principales
  if (escena == 2){
    textFont(fuente);
    image(fondo,0,0,alto,ancho);
    
    text("personajes principales",posx-350,posy-75);
    
    text("creador",posx-600,posy);
    text("Nicolas torandell",posx-150,posy);
    
    text("Steve",posx-600,posy+75);
    text("Brian Carrillo",posx-150,posy+75);
    image(steve,posx-400,posy+40,50,50);
    
    text("Creeper",posx-600,posy+150);
    text("Rosana Medrano",posx-150,posy+150);
    image(creeper,posx-400,posy+120,50,50);
    
    text("Zombie",posx-600,posy+225);
    text("Fabio Mayo",posx-150,posy+225);
    image(zombie,posx-400,posy+200,50,50);
    
    text("arana",posx-600,posy+300);
    text("Consolacion Checa",posx-150,posy+300);
    image(arana,posx-400,posy+280,50,50);
    
    text("enderman",posx-600,posy+375);
    text("Isidoro Alvarado",posx-150,posy+375);
    image(enderman,posx-400,posy+360,50,50);
    
    posy=posy-0.5;
    textFont(fuente,20);
    text("presione 's' para continuar",ancho-560,alto-680);
  }
  
  //personajes secundarios
  if (escena == 3){    
    textFont(fuente);
    image(fondo,0,0,alto,ancho);
    
    text("personajes secundarios",posx-350,posy-75);
    
    text("illager",posx-600,posy);
    text("Celestino Barba",posx-150,posy);
    image(aldeano,posx-400,posy-40,50,50);
    
    text("illager 2",posx-600,posy+75);
    text("Maria Carme Mir",posx-150,posy+75);
    image(aldeano,posx-400,posy+40,50,50);
    
    text("aldeano 1",posx-600,posy+150);
    text("Abel Almeida",posx-150,posy+150);
    image(aldeano,posx-400,posy+120,50,50);
    
    text("aldeano 2",posx-600,posy+225);
    text("Elia Serna",posx-150,posy+225);
    image(aldeano,posx-400,posy+200,50,50);
    
    text("vendedor ambulante",posx-600,posy+300);
    text("Tomas Marti",posx-150,posy+300);
    image(aldeano,posx-400,posy+280,50,50);
    
    text("espectro",posx-600,posy+375);
    text("Ingrid Juan",posx-150,posy+375);
    image(vex,posx-400,posy+360,50,50);
    
    posy=posy-0.5;
    textFont(fuente,20);
    text("presione 's' para continuar",ancho-560,alto-680);
  }

  //musica
  if (escena == 4){
    textFont(fuente);
    image(fondo,0,0,alto,ancho);
    
    text("sonido",posx-350,posy-75);
    
    text("Musica",posx-600,posy);
    text("Nahia Tirado",posx-150,posy);
    
    text("efectos de sonido",posx-550,posy+75);
    text("Teodoro Vera",posx-150,posy+75);
    
    text("VFX",posx-600,posy+150);
    text("Francesca España",posx-150,posy+150);
    
    posy=posy-0.5;
    textFont(fuente,20);
    text("presione 's' para continuar",ancho-560,alto-680);
  }
  
  //direccion
  if (escena == 5){
    textFont(fuente);
    image(fondo,0,0,alto,ancho);
    
    text("direccion",posx-350,posy-75);
    
    text("direccion",posx-600,posy);
    text("Antonio Coronado",posx-150,posy);
    
    text("casting",posx-600,posy+75);
    text("Ruth Vila",posx-150,posy+75);
    
    text("Camara",posx-600,posy+150);
    text("Biel Catala",posx-150,posy+150);
    
    posy=posy-0.5;
    textFont(fuente,20);
    text("presione 's' para continuar",ancho-560,alto-680);
  }
  
  if (escena == 6){
    textFont(fuente,20);
    text("presione 's' para continuar",ancho-560,alto-680);
    image(fondo,0,0,alto,ancho);
    fill(255);
    ellipse(posx/2,posy/2,100,100);
    fill(0);
    text(cont,posx/2,posy/2);
    textFont(fuente,40);
    text("fuegos\n" + "artificiales >",150,350);
    text("< creepers",350,150); 
    image(piedra,100,100,100,100);
    if (cont==10 || frameCount==1000){;
      escena=1;
    }
  }
}

void keyPressed (){
  if (key == 's'){
      escena++;
      posy=700;
      frameCount=0;
      cont=0;
      if(escena==7){
        escena=6;
    }
  }
}

void mousePressed(){
  if (escena == 6){
    float distancia = dist(mouseX,mouseY,posx/2,posy/2);
    int radio = 100/2;
    float randomx =random(500);
    float randomy =random(500);
    float randomcolor1=random(255);
    float randomcolor2=random(255);
    float randomcolor3=random(255);
    if (distancia < radio){
        fill(randomcolor1,randomcolor2,randomcolor3);
        ellipse(randomx,randomy,200,200);
        cont++;
    }
    if (mouseX > 100 && mouseX <200){
      if (mouseY > 100 && mouseY <200){
        image(creeper,randomx,randomy,150,150);
        cont++;
      }
    }
  }
}
