class Bullet {
  PVector loc, vel, acc;
  float sz;
  Bullet(float x_, float y_, float vx_, float vy_, 
  float ax_, float ay_, float sz_) {
    loc = new PVector(x_,y_);
    vel = new PVector(vx_,vy_);
    acc = new PVector(ax_,ay_);
    sz=sz_;
  }
  
//  Bullet() {
//    loc = new PVector();
//    vel = new PVector();
//    acc = new PVector();
//    sz=sz_;
//  }
  
  void display() {
    noStroke();
    fill(255,0,40);
    ellipse(loc.x,loc.y,sz,sz);
  }
  
  void move() {
    vel.add(acc);
    loc.add(vel);
  }

}
