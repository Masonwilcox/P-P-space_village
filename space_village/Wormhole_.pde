int myRoomx, myRoomy;

class Wormhole extends GameObject {



  Wormhole(int _myRoomx, int _myRoomy) {
    location = new PVector (random(0, 1100), random(0, 800));
    lives=1;
    size=300;
    t=0;
    myRoomx =_myRoomx;
    myRoomy =_myRoomy;
  }
  void show() {

      fill(red);
      ellipse(location.x, location.y, size, size);

  }
  void act() {
    super.act();
  }
}
