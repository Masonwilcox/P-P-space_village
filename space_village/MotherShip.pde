class MotherShip extends GameObject {



  MotherShip() {
    location = new PVector (width/2, height/2);




    lives=1;
    size=200;
    t=0;
  }
  void show() {
    if (roomx==97&&roomy==97){
      image(MShip, location.x, location.y);
    }
  }
  void act() {
    super.act();
    if (roomx==97&&roomy==97) {
      if (dist(location.x, location.y, myShip.location.x, myShip.location.y)<150) {
        ShipInteract=true;
      } else {
        ShipInteract=false;
      }
      //println(""+ShipInteract);
    }
  }
}
