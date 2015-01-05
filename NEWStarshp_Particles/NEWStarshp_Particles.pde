ArrayList <Bullet> bullets = new ArrayList <Bullet>(); //Array list for class Bullet
ArrayList<Particle> allMyParticles = new ArrayList<Particle>();//Array list for class Particle

Meteors[] meteors = new Meteors[30];
//IMAGES
PImage Starship;//Spaceship image

boolean it = true;//a constant value to continuously run particle system 


Starfield starfield;//Method for the array of stars in space


void setup() {
  Starship = loadImage("fighter-01.png");//Loading the spaceship image
  size(1440, 900);//size of canvas
  starfield = new Starfield();//Initializing starfield method
  for (int m=0; m<meteors.length; m++) {//generatig a variable size for the meteor array
    meteors[m] = new Meteors(random(30, 60), random(.1, 10));
  }
  noStroke();//removing line stroke 
  noCursor();//rempving cursor visibility
}

void draw() {
  background(0);//background color 
  starfield.draw();//running the starfield array
  if (it == true) {//setting up a parameter for the particle systems' display 
    allMyParticles.add(new Particle());
  }
  for (int i = allMyParticles.size ()-1; i >= 0; i--) { //fufill the life of the particle system 
    Particle currentParticle = allMyParticles.get(i);
    currentParticle.display();//displaying the particle system
    currentParticle.move();//adding movement to the particle system
    if (currentParticle.isDead()) {//setting up the removal of the particle system 
      allMyParticles.remove(i);
    }
  }
  for (int i=0; i < meteors.length; i++) { //set the functions of the particle system
    meteors[i].display();//displaying the meteors 
    meteors[i].move();//adding movement to the meteors
    meteors[i].flyaround();//creating movement from the sides of the screen to allow the meteors to reappear on screen
   
  }
  for (int j = bullets.size ()-1; j>=0; j--) {//setting the functions for the bullet projectiles
    Bullet b = bullets.get(j);
    b.display();
    b.move();
    for (int i = 0; i<meteors.length; i++) {
      b.hit(meteors[i]);
    }
     image(Starship, mouseX, mouseY);//displaying the image of the starship
  }
}

void mousePressed() {//setting the function of the mouse button being pressed
  bullets.add(new Bullet(mouseX+Starship.width/2, mouseY+Starship.height/2, 0, -5, 0, -.75, 5));
}

