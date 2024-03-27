// The Flock (a list of Boid objects)

class Flock {
  ArrayList<Boid> boids; // An ArrayList for all the boids
  ArrayList<Avoid> avoids; // Added: arraylist for obstacles

  Flock() {
    boids = new ArrayList<Boid>(); // Initialize the ArrayList
    avoids = new ArrayList<Avoid>(); //Added
  }

  void run() {
    for (Boid b : boids) {
      b.run(boids, avoids);  // Passing the entire list of boids to each boid individually, Added: avoids to be considered in pathing
    }
    for (Avoid a : avoids) {
      a.render();
    }
  }

  void addBoid(Boid b) {
    boids.add(b);
  }
  
  void addAvoid(Avoid a) {
    avoids.add(a);
  }

}
