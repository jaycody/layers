/*jstephens  - 2016_06
layers project
singleParticle experiment via shiffman
*/

Particle p;

PImage baseLayer;

PVector location;
float xAdjust = 0;
float yAdjust = 0;
float wAdjust = 0;
float hAdjust = 0;

void setup(){
 size(640,480, P2D);
 
 baseLayer = createImage(width, height, ARGB);
 
 
 p = new Particle(new PVector(width/2, height*.2));
 location = new PVector(width/2, height/2);
 background(255);
 smooth();
}

void draw(){
 location.x = mouseX + xAdjust;
 location.y = mouseY + yAdjust;
 
 
 ///////////////////BOOM/////////////////////////
 PImage img = createImage(width, height, ARGB); 
 loadPixels();
 baseLayer.loadPixels();
  for (int i = 0; i < pixels.length; i++) {//copy the image to img
     img.pixels[i] = pixels[i];
     baseLayer.pixels[i] = pixels[i];
  }
 updatePixels();
 baseLayer.updatePixels();
 imageMode(CENTER);
 blendMode(BLEND);
 image(baseLayer, mouseY-(1/(mouseY+1)), mouseX, width*1.1, height);
 image(img, location.x, location.y, img.width*(1+wAdjust), img.height*(1+hAdjust));
 //image(baseLayer, mouseY, mouseX, width*.8, height*.8);
 ///////////////////////////////////////////////////
  
   fill(255,0,0);
  ellipse(mouseX,mouseY, 40,40);
  
  
  p.run(); 
 
 if (p.isDead()){
  p = new Particle(new PVector(width/2, height*.2));
  
 }
 
  //saveFrame("frames/####.tif");
}

void keyPressed() { //handle some user input
    if(key == 'u') {
      yAdjust-=1;
    } else if(key == 'd') {
      yAdjust+=1;     
    } else if(key == 'l') {
      xAdjust-=1;
    } else if(key == 'r') {
      xAdjust+=1;     
    } else if(key == 'n') {
      wAdjust-=.01;
    } else if(key == 'w') {
      wAdjust+=.01;     
    } else if(key == 's') {
      hAdjust-=.01;     
    } else if(key == 't') {
      hAdjust+=.01;     
    }
}