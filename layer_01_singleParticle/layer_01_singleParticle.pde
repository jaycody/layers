/*jstephens  - 2016_06
layers project
singleParticle experiment via shiffman
*/

Particle p;

void setup(){
 size(640,480, P2D);
 
 p = new Particle(new PVector(width/2, height*.2));
 
 background(255);
 smooth();
}

void draw(){
 p.run(); 
 
 if (p.isDead()){
  p = new Particle(new PVector(width/2, height*.2)); 
 }
  
}