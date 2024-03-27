/**
 * Flocking 
 * by Daniel Shiffman.  
 * 
 * An implementation of Craig Reynold's Boids program to simulate
 * the flocking behavior of birds. Each boid steers itself based on 
 * rules of avoidance, alignment, and coherence.
 * 
 * Click the mouse to add a new boid.
 */
 
/**
 * Added: right click to added obstacles, or refered to as avoids in code
 * Based on code by jackaperkins on github
 * https://github.com/jackaperkins/boids
 */

Flock flock;

void setup() {
  size(1400, 1000);
  flock = new Flock();
  // Add an initial set of boids into the system
  for (int i = 0; i < 150; i++) {
    flock.addBoid(new Boid(width/2,height/2));
  }
}

void draw() {
  background(50);
  flock.run();
}

// Add a new boid into the System
void mousePressed() {
  if (mouseButton == LEFT){
    flock.addBoid(new Boid(mouseX,mouseY));}
  else if (mouseButton == RIGHT){
    flock.addAvoid(new Avoid(mouseX,mouseY));}
    
}
