int mode,a,coin;
int xp;
float fuel=100;
//declaring constants
final int intro = 0;
final int game = 1;
final int gameOver = 2;

//colour palet
color red     =#FF0000;
color orange  =#FF6600;
color yellow  =#FFCC00;
color green   =#00CC00;
color blue    =#2200CC;
color violet  =#A30EF7;
color white2 =#ffffff;
boolean upkey, leftkey, downkey, rightkey, spacekey,Xkey;
PImage map;

int no=100;
int t=0;
int px,py;


Ship myShip;
int shipTimer;
ArrayList<GameObject> myGameObjects;
PImage Shipimg;
PImage MShip;
PImage Bullet;
PImage astronaut;
PImage background;
PImage shop;
PImage backgroundImage;
PImage interior;
PImage shipInterior;
int l=0;
int roomx=97;
int roomy=97;
int mapWidth, mapHeight;
boolean n, s, e, w;
boolean built=true;
boolean ShipInteract;
void setup() {

  size (1100, 800);
 Shipimg =loadImage("Ship.png");
 
 
  interior =loadImage("storeInterior.png");
  interior.resize(width,height);
  
   shipInterior =loadImage("shipInterior.png");
    shipInterior.resize(width,height);
 
  astronaut =loadImage("astronaut.png");
 
 
   backgroundImage =loadImage("backgroundImage.png");
 backgroundImage.resize(width,height);
 
   shop =loadImage("shopIcon.png");
   shop.resize(80,80);
 
  background =loadImage("backgroundShip.png");
  background.resize(450,150);
 
  Bullet =loadImage("bullet.png");
  Bullet.resize(50,50);
  
  mode=intro;
    myShip = new Ship();
    imageMode(CENTER);

  Shipimg.resize(50, 50);
    
    myGameObjects = new ArrayList<GameObject>();
  
  MShip =loadImage("MotherShip.png");
  MShip.resize(700, 600);
  
  
  
  map=loadImage("map.png");
  mapWidth= map.width;
  mapHeight= map.height;
  
}

void draw() {
  //mode framework
  if (mode == intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==gameOver) {
    gameOver();
  } else {
    println("mode error"+mode);
  }
  

}

void mousePressed() {
  if(dist(mouseX,mouseY,550,200)<200){
    store=false;
    
  }
  
  if (mode == intro) {
    mode = game;
  } else if (mode==game) {
    
     //game tab-=-=-=-=-=-=-=-=-=
   // mode = gameOver;
   
  
  
  
 //game tab-=-=-=-=-=-=-=-=-=
   
   
  } else if (mode==gameOver) {
    mode = intro;
  } else {
    println("mode error"+mode);
  }
}
void keyPressed() {

  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
  if (key == ' ') spacekey = true;
  if (key == 'x') Xkey = true;
}

void keyReleased() {
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
  if (key == ' ') spacekey = false;
  if (key == 'x') Xkey = false;
}
