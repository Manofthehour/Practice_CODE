float x=500;
float y=1000;
float d=200;
float m=100;


void setup () {
  size(1280, 800);
  frameRate (75);
}


void draw () {
  background (0, 0, 0);
  fill (random (255), random (255), random (255));
  noStroke ();
  ellipse (width/2, height/2, random (500), random(500));
  ellipse (width, height, random (500), random(500));
  
  
}
