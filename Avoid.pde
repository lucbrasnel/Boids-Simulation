//Added class for avoids based on code by jackaperkins
class Avoid {
  PVector position;
  float size = 15;
  
  Avoid (float x, float y) {
    position = new PVector(x,y);
  }
  
  void render() {
    // Draw a circle at position
    
    fill(200, 100);
    stroke(255);
    circle(position.x, position.y, size);
  }
}
