// Designed by Ferdinand
// created on 25/10/2020

import processing.sound.*;

SoundFile LisztMusic;
SoundFile sergeiMusic;
SoundFile BeethovenMusic;
SoundFile DebussyMusic;

PImage Liszt;
PImage sergei;
PImage Beethoven;
PImage Debussy;

//PShape Lborder;
//PShape Sborder;

void setup(){
  
  size(1015,1015);
  Liszt = loadImage("Liszt.jpg");
  sergei = loadImage("Rachmaninoff.jpg");
  Beethoven = loadImage("Beethoven.jpg");
  Debussy = loadImage("Debussy.jpg");
  
  background(255, 204, 0);
  
    // Load a soundfile from the /data folder of the sketch and play it back
  LisztMusic = new SoundFile(this, "Hungarian.mp3");
    // Load a soundfile from the /data folder of the sketch and play it back
  sergeiMusic = new SoundFile(this, "sergei.mp3");
    // Load a soundfile from the /data folder of the sketch and play it back
  BeethovenMusic = new SoundFile(this, "moonlight.mp3");
    // Load a soundfile from the /data folder of the sketch and play it back
  DebussyMusic = new SoundFile(this, "Clair.mp3");
}

void draw(){

  
  image(Liszt, 5, 5, 500, 500);
  image(sergei, 510, 5, 500, 500);
  image(Beethoven, 5, 510, 500, 500);
  image(Debussy, 510, 510, 500, 500);
  
    
  if((mouseX < width/2) && (mouseY < height/2) == true){
     tint(205, 205, 205);
     image(Liszt, 5, 5, 500, 500);
     noTint();
     image(Debussy, 510, 510, 500, 500);
     noTint();
     image(sergei, 510, 5, 500, 500);
     noTint();
     image(Beethoven, 5, 510, 500, 500); 
     if(mousePressed && (mouseButton == LEFT)){
       LisztMusic.play();      
     }
   
    }
 
  if((mouseX > width/2) && (mouseY < height/2) == true){
     tint(205, 205, 205);
     image(sergei, 510, 5, 500, 500); 
     noTint();
     image(Liszt, 5, 5, 500, 500);
     noTint();
     image(Debussy, 510, 510, 500, 500);
     noTint();
     image(Beethoven, 5, 510, 500, 500);
     if(mousePressed && (mouseButton == LEFT)){
       sergeiMusic.play(); 
       if(mousePressed && (mouseButton == RIGHT)){
         sergeiMusic.pause();
       }
   } 
       
  } 
    
  if((mouseX < width/2) && (mouseY > height/2) == true){
     tint(205, 205, 205);
     image(Beethoven, 5, 510, 500, 500);
     noTint();
     image(Liszt, 5, 5, 500, 500);
     noTint();
     image(sergei, 510, 5, 500, 500);
     noTint();
     image(Debussy, 510, 510, 500, 500);    
     if(mousePressed && (mouseButton == LEFT)){
       BeethovenMusic.play(); }          
    } 
    
  if((mouseX > width/2) && (mouseY > height/2) == true){
    tint(205, 205, 205); 
    image(Debussy, 510, 510, 500, 500);
    noTint();
    image(Liszt, 5, 5, 500, 500);
    noTint();
    image(sergei, 510, 5, 500, 500);
    noTint();
    image(Beethoven, 5, 510, 500, 500);  
    if(mousePressed && (mouseButton == LEFT)){
       DebussyMusic.play(); }         
    } 
 
 
   if (mousePressed && (mouseButton == RIGHT)){
         LisztMusic.pause();
         sergeiMusic.pause();
         BeethovenMusic.pause();
         DebussyMusic.pause();
       }

}

void mouseWheel(MouseEvent event) {
  float rand11 = random(255);
  float rand111 = random(255);
  float rand1111 = random(255);
  float rand1 = (rand11 + rand111 + rand1111)/3;
  
  float rand22 = random(255);
  float rand222 = random(255);
  float rand2222 = random(255);
  float rand2 = (rand22 + rand222 + rand2222)/3;

  float rand33 = random(255);
  float rand333 = random(255);
  float rand3333 = random(255);
  float rand3 = (rand33 + rand333 + rand3333)/3;

  background(rand1,rand2,rand3); 
}

// Designed by Ferdinand
