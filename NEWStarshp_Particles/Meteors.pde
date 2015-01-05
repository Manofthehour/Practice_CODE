//CLASS
class Meteors {
  PVector point, v, ac;//Pvectors for location, velocity, acceleration
  float sz;//float for size
  float speed;//float for speed
  float hue;//float for hue
  PImage meteor;//Image for the meteor

//CONSTRUCTOR
  Meteors(float tempsz, float tempspeed) {
    sz = tempsz;//initialzing sz
    speed = tempspeed;//initializing speed
    point = new PVector(random(sz, width-sz), random(sz, height-sz));//initializing point
    v = PVector.random2D();//initializing velocity
    ac = new PVector();//initialzing acceleration
    v.setMag(speed);//setting magnitude for velocity 
    hue = random(360);//setting hue parameters
    meteor = loadImage("disonerock.png");//uploading meteor image
  }

//METHODS
  void display() {//method for the display of the meteor
    image(meteor, point.x, point.y, sz, sz);
  }
  void move() {//method for the movement of the meteor 
    v.add(ac);//adding acceleration to the velocity of the meteor
    point.add(v);//adding velocity to the location of the meteor
  }
  void flyaround() {//method for the meteors interaction with the edges of the canvas
    if (point.x - sz/2 > width) {//if the meteor is farther than the width of the screen, reset to the beginning of the screen's width 
      point.x = -sz/2;
      
    } 
    if (point.x + sz/2 < 0) {//if the meteor is father than the beginning of the screen's width, reset to the end of the width of the canvas
      point.x= width+sz/2;
      
    }
    if (point.y - sz/2 > height) {//if the meteor is lower than the end height of the canvas, reset to the top of the canvas
      point.y= -sz/2;
    }
    if (point.y + sz/2 < 0) {//if the meteor is higher than the top of the canvas, reset to the bottom of the canvas
      point.y= height+sz/2;
    }
  }

  void collideWith(Meteors other) {//method for the collision of a meteor with other meteors
    if (point.dist(other.point) < sz/2 + other.sz/2) {//if the distance betwen a meteor and another meteor is less than their radii 
      v = PVector.sub(point, other.point);//than set the velocity to this Pvector 
      v.setMag(speed);//set the magnitude of the velocity
    }
  }
}

