import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer Spanish1;
AudioPlayer Spanish2;
AudioPlayer Spanish3;
AudioPlayer Spanish4;
AudioPlayer Spanish5;
AudioPlayer Spanish6;
AudioPlayer Spanish7;
AudioPlayer Spanish8;
AudioPlayer Spanish9;
AudioPlayer Spanish10;
AudioPlayer Rap1;
AudioPlayer Rap2;
AudioPlayer Rap3;
AudioPlayer Rap4;
AudioPlayer Rap5;
AudioPlayer Rap6;
AudioPlayer Rap7;
AudioPlayer Rap8;
AudioPlayer Rap9;
AudioPlayer Rap10;

int mode, a, coin;
int xp;
int i = 0;
float fuel=100;
//declaring constants
final int intro = 0;
final int game = 1;
final int gameOver = 2;
final int Radio = 3;

//colour palet
color black  = #000000;
color red     =#FF0000;
color orange  =#FF6600;
color yellow  =#FFCC00;
color green   =#00CC00;
color blue    =#2200CC;
color violet  =#A30EF7;
color white2 =#ffffff;
boolean upkey, leftkey, downkey, rightkey, wkey, skey, akey, dkey, spacekey, Xkey, rkey;
PImage map;

int no=100;
int t=0;
int px, py, Music;
int s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10;

int NextTrackSpanish, SpanishSongCounter, CerantSpanishSong, MusicPress, NextTrackRap, RapSongCounter, RSCN;


Ship myShip;
int shipTimer;
ArrayList<GameObject> myGameObjects;
PImage Shipimg;
PImage MShip;
PImage Rad;
int l, worm, Wormholeshow=0;
int roomx=97;
int roomy=97;
int mapWidth, mapHeight;
boolean n, s, e, w;
boolean built=true;
boolean ShipInteract;
//boolean isMuted;

void setup() {
  minim = new Minim(this);
  Spanish1  = minim.loadFile("Tu Pensaste.mp3");
  Spanish2  = minim.loadFile("Que Tire Pa' 'Lante.mp3");
  Spanish3  = minim.loadFile("Loco Contigo.mp3");
  Spanish4  = minim.loadFile("Que Calor.mp3");
  Spanish5  = minim.loadFile("Mia.mp3");
  Spanish6  = minim.loadFile("11 PM.mp3");
  Spanish7  = minim.loadFile("Tutu.mp3");
  Spanish8  = minim.loadFile("China.mp3");
  Spanish9  = minim.loadFile("Hola Señorita.mp3");
  Spanish10 = minim.loadFile("Callaíta.mp3");
  Rap1 = minim.loadFile("Tip Toe.mp3");
  Rap2 = minim.loadFile("Mustard.mp3");
  Rap3 = minim.loadFile("MIDDLE CHILD.mp3");
  Rap4 = minim.loadFile("Hot Shower.mp3");
  Rap5 = minim.loadFile("Moonlight.mp3");

  size (1100, 800);
  Shipimg =loadImage("Ship.png");
  Rad =loadImage("Rad.jpg");
  mode=intro;
  myShip = new Ship();
  imageMode(CENTER);
  rectMode(CENTER);
  Rad.resize(800, 600);
  Shipimg.resize(50, 50);

  myGameObjects = new ArrayList<GameObject>();

  MShip =loadImage("MotherShip.png");
  MShip.resize(700, 600);



  map=loadImage("map.png");
  mapWidth= map.width;
  mapHeight= map.height;
  s1 = 11260;
  s2 = 13140;
  s3 = 11540;
  s4 = 10700;
  s5 = 12800;
  s6 = 15680;
  s7 = 12800;
  s8 = 18320;
  s9 = 12980;
  s10= 15320;
  r1 = 10640;
  r2 = 11780;
  r3 = 13280;
  r4 = 13760;
  r5 = 8300;
  r6 = 15;
  r7 = 12;
  r8 = 18;
  r9 = 12;
  r10= 15;
  SpanishSongCounter = 0;
  NextTrackSpanish = 0;
  CerantSpanishSong = 0;
  RapSongCounter = 0;
  NextTrackRap = 0;
}

void draw() {
  //mode framework
  if (mode == intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==gameOver) {
    gameOver();
  } else if (mode==Radio) {
    Radio();
  } else {
    //println("mode error"+mode);
  }



  if (Music == 1) {
    NextTrackSpanish++;

    if ( SpanishSongCounter == 0 ) {

      Spanish1.play();


      if (NextTrackSpanish >= s1) {
        NextTrackSpanish = 0;
        Spanish1.pause();
        Spanish1.rewind();
        SpanishSongCounter ++;
      }
    } else if (SpanishSongCounter == 1) {
      Spanish2.play();   

      if (NextTrackSpanish >= s2) {
        NextTrackSpanish = 0;
        Spanish2.pause();
        Spanish2.rewind();
        SpanishSongCounter ++;
      }
    } else if (SpanishSongCounter == 2) {
      Spanish3.play();   

      if (NextTrackSpanish >= s3) {
        NextTrackSpanish = 0;
        Spanish3.pause();
        Spanish3.rewind();
        SpanishSongCounter ++;
      }
    } else if (SpanishSongCounter == 3) {
      Spanish4.play();   

      if (NextTrackSpanish >= s4) {
        NextTrackSpanish = 0;
        Spanish4.pause();
        Spanish4.rewind();
        SpanishSongCounter ++;
      }
    } else if (SpanishSongCounter == 4) {
      Spanish5.play();   

      if (NextTrackSpanish >= s5) {
        NextTrackSpanish = 0;
        Spanish5.pause();
        Spanish5.rewind();
        SpanishSongCounter ++;
      }
    } else if (SpanishSongCounter == 5) {
      Spanish6.play();   

      if (NextTrackSpanish >= s6) {
        NextTrackSpanish = 0;
        Spanish6.pause();
        Spanish6.rewind();
        SpanishSongCounter ++;
      }
    } else if (SpanishSongCounter == 6) {
      Spanish7.play();   

      if (NextTrackSpanish >= s7) {
        NextTrackSpanish = 0;
        Spanish7.pause();
        Spanish7.rewind();
        SpanishSongCounter ++;
      }
    } else if (SpanishSongCounter == 7) {
      Spanish8.play();   

      if (NextTrackSpanish >= s8) {
        NextTrackSpanish = 0;
        Spanish8.pause();
        Spanish8.rewind();
        SpanishSongCounter ++;
      }
    } else if (SpanishSongCounter == 8) {
      Spanish9.play();   

      if (NextTrackSpanish >= s9) {
        NextTrackSpanish = 0;
        Spanish9.pause();
        Spanish9.rewind();
        SpanishSongCounter ++;
      }
    } else if (SpanishSongCounter == 9) {
      Spanish10.play();   

      if (NextTrackSpanish >= s10) {
        NextTrackSpanish = 0;
        Spanish10.pause();
        Spanish10.rewind();
        SpanishSongCounter = SpanishSongCounter - 9;
      }
    }
  }

  println("S"+RapSongCounter);
  println("N"+NextTrackSpanish);


  ////////////////////////////////////////////////////////Rap/////////////////////////////////////////////////////////////////////////////////////////////
  if (Music == 2) {
    NextTrackRap++;

    if ( RapSongCounter == 0 ) {
      Rap1.play();

      if (NextTrackRap >= r1) {
        NextTrackRap = 0;
        Rap1.pause();
        Rap1.rewind();
        RapSongCounter = 1;
      }
    } else if (RapSongCounter == 1) {
      Rap2.play();   

      if (NextTrackRap >= r2) {
        NextTrackRap = 0;
        Rap2.pause();
        Rap2.rewind();
        RapSongCounter = 2;
      }
    } else if (RapSongCounter == 2) {
      Rap3.play();   

      if (NextTrackRap >= r3) {
        NextTrackRap = 0;
        Rap3.pause();
        Rap3.rewind();
        RapSongCounter = 3;
      }
    } else if (RapSongCounter == 3) {
      Rap4.play();   

      if (NextTrackRap >= r4) {
        NextTrackRap = 0;
        Rap4.pause();
        Rap4.rewind();
        RapSongCounter = 4;
      }
    } else if (RapSongCounter == 4) {
      Rap5.play();   

      if (NextTrackRap >= r5) {
        NextTrackRap = 0;
        Rap5.pause();
        Rap5.rewind();
        RapSongCounter = 5;
      }
    } else if (RapSongCounter == 5) {
      Rap6.play();   

      if (NextTrackRap >= r6) {
        NextTrackRap = 0;
        Rap6.pause();
        Rap6.rewind();
        RapSongCounter = 6;
      }
    } else if (RapSongCounter == 6) {
      Rap7.play();   

      if (NextTrackRap >= r7) {
        NextTrackRap = 0;
        Rap7.pause();
        Rap7.rewind();
        RapSongCounter = 7;
      }
    } else if (RapSongCounter == 7) {
      Rap8.play();   

      if (NextTrackRap >= r8) {
        NextTrackRap = 0;
        Rap8.pause();
        Rap8.rewind();
        RapSongCounter = 8;
      }
    } else if (RapSongCounter == 8) {
      Rap9.play();   

      if (NextTrackRap >= r9) {
        NextTrackRap = 0;
        Rap9.pause();
        Rap9.rewind();
        RapSongCounter = 9;
      }
    } else if (RapSongCounter == 9) {
      Rap10.play();   

      if (NextTrackRap >= r10) {
        NextTrackRap = 0;
        Rap10.pause();
        Rap10.rewind();
        RapSongCounter = 0;
      }
    }
  }
}








void mousePressed() {
  if (mode == intro) {
    mode = game;
  } else if (mode==game) {

    //game tab-=-=-=-=-=-=-=-=-=
    // mode = gameOver;




    //game tab-=-=-=-=-=-=-=-=-=
  } else if (mode==gameOver) {
    mode = intro;
  } else {
    //println("mode error"+mode);
  }

  if (mouseX > 180 && mouseX < 320 && mouseY > 235 && mouseY < 305) {
    Rap1.pause();
    Rap2.pause();
    Rap3.pause();
    Rap4.pause();
    Rap5.pause();
    //Rap6.pause();
    //Rap7.pause();
    //Rap8.pause();
    //Rap9.pause(); 
    //Rap10.pause();


    //Spanish1.unmute();

    Music = 1;
  } else if (mouseX > 180 && mouseX < 320 && mouseY > 315 && mouseY < 385) {
    Spanish1.pause();
    Spanish2.pause();
    Spanish3.pause();
    Spanish4.pause();
    Spanish6.pause();
    Spanish7.pause();
    Spanish8.pause();
    Spanish9.pause();
    Spanish10.pause();

    //Spanish1.mute();
    Music = 2;
  } else if (mouseX > 180 && mouseX < 320 && mouseY > 395 && mouseY < 465) {
    fill (blue);
  } else if (mouseX > 773 && mouseX < 913 && mouseY > 235 && mouseY < 305) {
    fill (red);
  } else if (mouseX > 773 && mouseX < 913 && mouseY > 315 && mouseY < 385) {
    fill (orange);
  } else if (mouseX > 773 && mouseX < 913 && mouseY > 398 && mouseY < 468) {
    fill (blue);
  } else if (mouseX > 665 && mouseX < 755 && mouseY > 413 && mouseY < 453) {
    if (Music == 1) {
      if (SpanishSongCounter == 0 ) {
        Spanish1.pause();
        Spanish1.rewind();
        SpanishSongCounter = 1; 
        NextTrackSpanish = 0;
      } else if (SpanishSongCounter == 1 ) {
        Spanish2.pause();
        Spanish2.rewind();
        SpanishSongCounter = 2;
        NextTrackSpanish = 0;
      } else if (SpanishSongCounter == 2 ) {
        Spanish3.pause();
        Spanish3.rewind();
        SpanishSongCounter = 3;
        NextTrackSpanish = 0;
      } else if (SpanishSongCounter == 3 ) {
        Spanish4.pause();
        Spanish4.rewind();
        SpanishSongCounter = 4;
        NextTrackSpanish = 0;
      } else if (SpanishSongCounter == 4 ) {
        Spanish5.pause();
        Spanish5.rewind();
        SpanishSongCounter = 5; 
        NextTrackSpanish = 0;
      } else if (SpanishSongCounter == 5 ) {
        Spanish6.pause();
        Spanish6.rewind();
        SpanishSongCounter = 6; 
        NextTrackSpanish = 0;
      } else if (SpanishSongCounter == 6 ) {
        Spanish7.pause();
        Spanish7.rewind();
        SpanishSongCounter = 7; 
        NextTrackSpanish = 0;
      } else if (SpanishSongCounter == 7 ) {
        Spanish8.pause();
        Spanish8.rewind();
        SpanishSongCounter = 8; 
        NextTrackSpanish = 0;
      } else if (SpanishSongCounter == 8 ) {
        Spanish9.pause();
        Spanish9.rewind();
        SpanishSongCounter = 9; 
        NextTrackSpanish = 0;
      } else if (SpanishSongCounter == 9 ) {
        Spanish10.pause();
        Spanish10.rewind();
        SpanishSongCounter = 0; 
        NextTrackSpanish = 0;
      }
    }
    
    
    
        if (Music == 2) {
      if (RapSongCounter == 0 ) {
        Rap1.pause();
        Rap1.rewind();
        RapSongCounter = 1; 
        NextTrackRap = 0;
      } else if (RapSongCounter == 1 ) {
        Rap2.pause();
        Rap2.rewind();
        RapSongCounter = 2;
        NextTrackRap = 0;
      } else if (RapSongCounter == 2 ) {
        Rap3.pause();
        Rap3.rewind();
        RapSongCounter = 3;
        NextTrackRap = 0;
      } else if (RapSongCounter == 3 ) {
        Rap4.pause();
        Rap4.rewind();
        RapSongCounter = 4;
        NextTrackRap = 0;
      } else if (RapSongCounter == 4 ) {
        Rap5.pause();
        Rap5.rewind();
        RapSongCounter = 5; 
        NextTrackRap = 0;
      } else if (RapSongCounter == 5 ) {
        Rap6.pause();
        Rap6.rewind();
        RapSongCounter = 6; 
        NextTrackRap = 0;
      } else if (RapSongCounter == 6 ) {
        Rap7.pause();
        Rap7.rewind();
        RapSongCounter = 7; 
        NextTrackRap = 0;
      } else if (RapSongCounter == 7 ) {
        Rap8.pause();
        Rap8.rewind();
        RapSongCounter = 8; 
        NextTrackRap = 0;
      } else if (RapSongCounter == 8 ) {
        Rap9.pause();
        Rap9.rewind();
        RapSongCounter = 9; 
        NextTrackRap = 0;
      } else if (RapSongCounter == 9 ) {
        Rap10.pause();
        Rap10.rewind();
        RapSongCounter = 0; 
        NextTrackRap = 0;
      }
    }
    
    
  } else if (mouseX > 345 && mouseX < 435 && mouseY > 413 && mouseY < 453) {
    if (Music == 1) {
      if (SpanishSongCounter == 0 ) {
        Spanish1.pause();
        Spanish1.rewind();
        SpanishSongCounter = 9; 
        NextTrackSpanish = 0;
      } else if (SpanishSongCounter == 1 ) {
        Spanish2.pause();
        Spanish2.rewind();
        SpanishSongCounter = 0;
        NextTrackSpanish = 0;
      } else if (SpanishSongCounter == 2 ) {
        Spanish3.pause();
        Spanish3.rewind();
        SpanishSongCounter = 1;
        NextTrackSpanish = 0;
      } else if (SpanishSongCounter == 3 ) {
        Spanish4.pause();
        Spanish4.rewind();
        SpanishSongCounter = 2;
        NextTrackSpanish = 0;
      } else if (SpanishSongCounter == 4 ) {
        Spanish5.pause();
        Spanish5.rewind();
        SpanishSongCounter = 3; 
        NextTrackSpanish = 0;
      } else if (SpanishSongCounter == 5 ) {
        Spanish6.pause();
        Spanish6.rewind();
        SpanishSongCounter = 4; 
        NextTrackSpanish = 0;
      } else if (SpanishSongCounter == 6 ) {
        Spanish7.pause();
        Spanish7.rewind();
        SpanishSongCounter = 5; 
        NextTrackSpanish = 0;
      } else if (SpanishSongCounter == 7 ) {
        Spanish8.pause();
        Spanish8.rewind();
        SpanishSongCounter = 6; 
        NextTrackSpanish = 0;
      } else if (SpanishSongCounter == 8 ) {
        Spanish9.pause();
        Spanish9.rewind();
        SpanishSongCounter = 7; 
        NextTrackSpanish = 0;
      } else if (SpanishSongCounter == 9 ) {
        Spanish10.pause();
        Spanish10.rewind();
        SpanishSongCounter = 8; 
        NextTrackSpanish = 0;
      }
    }
    
    
            if (Music == 2) {
      if (RapSongCounter == 0 ) {
        Rap1.pause();
        Rap1.rewind();
        RapSongCounter = 9; 
        NextTrackRap = 0;
      } else if (RapSongCounter == 1 ) {
        Rap2.pause();
        Rap2.rewind();
        RapSongCounter = 0;
        NextTrackRap = 0;
      } else if (RapSongCounter == 2 ) {
        Rap3.pause();
        Rap3.rewind();
        RapSongCounter = 1;
        NextTrackRap = 0;
      } else if (RapSongCounter == 3 ) {
        Rap4.pause();
        Rap4.rewind();
        RapSongCounter = 2;
        NextTrackRap = 0;
      } else if (RapSongCounter == 4 ) {
        Rap5.pause();
        Rap5.rewind();
        RapSongCounter = 3; 
        NextTrackRap = 0;
      } else if (RapSongCounter == 5 ) {
        Rap6.pause();
        Rap6.rewind();
        RapSongCounter = 4; 
        NextTrackRap = 0;
      } else if (RapSongCounter == 6 ) {
        Rap7.pause();
        Rap7.rewind();
        RapSongCounter = 5; 
        NextTrackRap = 0;
      } else if (RapSongCounter == 7 ) {
        Rap8.pause();
        Rap8.rewind();
        RapSongCounter = 6; 
        NextTrackRap = 0;
      } else if (RapSongCounter == 8 ) {
        Rap9.pause();
        Rap9.rewind();
        RapSongCounter = 7; 
        NextTrackRap = 0;
      } else if (RapSongCounter == 9 ) {
        Rap10.pause();
        Rap10.rewind();
        RapSongCounter = 8; 
        NextTrackRap = 0;
      }
    }
    
  } else fill(0);
}
void keyPressed() {

  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
  if (key == 'W' || key == 'w' ) wkey = true;
  if (key == 'S' || key == 's' ) skey = true;
  if (key == 'A' || key == 'a' ) akey = true;
  if (key == 'D' || key == 'd' ) dkey = true;
  if (key == 'R' || key == 'r' ) rkey = true;
  if (key == ' ') spacekey = true;
  if (key == 'x') Xkey = true;
}

void keyReleased() {
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
  if (key == 'W' || key == 'w' ) wkey = false;
  if (key == 'S' || key == 's' ) skey = false;
  if (key == 'A' || key == 'a' ) akey = false;
  if (key == 'D' || key == 'd' ) dkey = false;
  if (key == 'R' || key == 'r' ) rkey = false;
  if (key == ' ') spacekey = false;
  if (key == 'x') Xkey = false;
}
