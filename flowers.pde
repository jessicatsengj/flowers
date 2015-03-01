import ddf.minim.*;
Minim minim;
AudioPlayer song;

PImage img1;
PImage img2;
int w=1180;
int h=w/99*70;

int flakes = 100;
Snow[] snows = new Snow[flakes];

float wind = 0;

void setup(){
  size(w,h);
  img1 = loadImage("people.png");
  img2 = loadImage("bg3.png");
  
  minim = new Minim(this);
  song = minim.loadFile("n74.mp3");
  song.play();
  
  for (int i=0; i<flakes; i++){
    snows[i] = new Snow();
  }
}
void draw(){
  background(0);
  image(img2,0,0,w,h);
  image(img1,0,-10,h/24*17,w/24*16);
 
 if (mouseX < width/3){
    wind = -3;
  }else if (mouseX < width/3*2){
    wind = 0; 
  } else{
    wind = 3;
  }
  
  for (int i=0; i<flakes; i++){
    snows[i].display();
  }
}
