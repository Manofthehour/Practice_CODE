//CLASS
class Particle {
  PVector loc, vel, acc;//Pvectors for location, velocity, acceleration
  float sz;//float for size

//CONSTRUCTOR
  Particle() {
    loc = new PVector(mouseX+20, mouseY+Starship.height-3);//location of the stream
    vel = new PVector(random(-1, 1), random(4, 2));//velocity of the stream
    acc = new PVector(0, .1);//acceleration of the stream
    sz = 10;//initializing sz
  }

//METHODS
  void display() {//method for displaying the stream
    stroke(255, 50, 0);
    line(loc.x, loc.y, loc.x+5, loc.y+5);
  }

  void move() {//method for the movement of the stream 
    vel.add(acc);//adding acceleration to the velocity of the stream
    loc.add(vel);//adding velocity to the location of the stream
  }

  boolean isDead() {//boolean to declare when the stream ends
    if (loc.y -sz/2 > mouseY+200) {//if the stream is more than 200 pixels away from mouseY than end the stream
      return true;
    } else {
      return false;
    }
  }
}
