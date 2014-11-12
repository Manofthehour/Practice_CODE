import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;
//Integers
int x;
int y;
int c;
int xs;
int ys;
int lrx;
int lrw;
int lrh;
int rrx;
int rry;
int rrw;
int rrh;
int cr = color(255, 0, 0);
int scoreR;
int scoreL;

//MUSIC FILES
import ddf.minim.*;

AudioPlayer player;
Minim minim;//audio context


void setup() {
  size(1024, 720);
  //BACKGROUND MUSIC
  minim = new Minim(this);
  player = minim.loadFile("Uplifting_Electro_Dubstep_Background_Music_-_Zeitgeist_by_Alumo2.mp3");
    player.play();
  //SETUP FUNCTIONS  
  frameRate(75);    
  rrx=994;
  rry=100;
  rrw=20;
  rrh=100;
  lrw=20;
  lrh=100;
  lrx=10;
  x=width/2;
  y=height/2;
  c=30;
  xs=5;
  ys=5;
}

void draw() {
  //COURT
  background(0);
  fill(0);
  stroke(cr);
  strokeWeight(7);
  rect(1, 1, 1022, 718 );
  noFill();
  ellipse(width/2, height/2, 100, 100);
  ellipse(width/2, height/2, 300, 300);
  line(width/2, 0, width/2, height);
  fill (0);
  //SHAPES AND COLORS
  strokeWeight(3);
  fill(100, 100, 100);
  rect(rrx, rry, rrw, rrh);
  rect(lrx, mouseY, lrw, lrh);
  fill(0);
  stroke(cr);
  ellipse(x, y, c, c);
  x=x+xs;
  y=y+ys;
  //BALL MOVEMENT
  if (x-c/2<=0) {
    x=width/2;
    xs=-5;
    scoreL++;
  }
  if (x+c/2>=width) {
    x=width/2;
    xs=5;
    scoreR++;
  }
  if (y-c/2<=0) {
    ys=-ys;
  }
  if (y+c/2>=height) {
    ys=-ys;
  }
  //BALL TO PADDLE CONTACT
  if (x-c/2<lrx+lrw && y<mouseY+lrh && y>mouseY) {
    xs= abs(xs);
    xs++;
  }
  if (x+c/2>rrx && y<=rry+rrh && y>rry) {
    xs=-abs(xs);
    xs--;
  }
  //KEY MAPPING
  if (keyPressed) {
    if (key == CODED) {
      if (keyCode ==DOWN) {
        rry=rry+=15;
      }
    }
  }
  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == UP) {
        rry=rry-15;
      }
    }
  }
  //BOREDER COLOR
  if (frameCount%100 ==0) {
    cr = color(random(100, 255), random(100, 255), random(100, 255));
  }
  //SCORE
  textSize(32);
  fill(255);
  text("SCORE", 461, 40);
  textSize(30);
  fill(255);
  text(scoreL, 582, 40);
  textSize(30);
  fill(255);
  text(scoreR, 422, 40);
  //PADDLE CONSTRAINT
  rry=constrain(rry, 0, height-rrh);
  //END OF GAME
  if (scoreR >= 10) {
    background (random(255), random(255), random(255));
    textSize(80);
    fill(0);
    text("Player 1 Wins", width/2-200, height/2);
  }
  if (scoreL >= 10) {
    background (random(255), random(255), random(255));
    textSize(80);
    fill(0);
    text("Player 2 Wins", width/2-200, height/2);
  }
  //GAME KEY FUNCTIONS
  if (keyPressed) {
    if (key=='e') {
      exit();
    }
  }
  if (keyPressed) {
    if (key=='r') {
      rrx=994;
      rry=100;
      rrw=20;
      rrh=100;
      lrw=20;
      lrh=100;
      lrx=10;
      x=width/2;
      y=height/2;
      c=30;
      xs=5;
      ys=5;
      scoreL=0;
      scoreR=0; 
    }
  }
}



