class Bullet extends GameObject {

  int age, t;

  Bullet() {
    location = new PVector (myShip.location.x, myShip.location.y);
    //location.x=myShip.location.x;
    //location.y=myShip.location.y;
    //velocity.x= myShip.direction.x;
    //velocity.y= myShip.direction.y;
    velocity = new PVector (myShip.direction.x, myShip.direction.y);
    velocity.setMag(5);
    direction = new PVector (myShip.direction.x,myShip.direction.y);
    age=0;
    lives=1;
    size=10;
    t=0;
  }
  void show() {

    pushMatrix();    
    int j=0;


    if (age<200&&lives>0) {
      translate(location.x, location.y);
      if (j==0) {
      rotate(direction.heading());
        j++;
      }
      image(Bullet, 0, 0);
    } else {
      lives=0;
    }
    popMatrix();
  }
  void act() {
    super.act();
    location.add(velocity);


    age++;
    if (age>=150) {
      lives=0;
    }
    //    if(location.x>1040){

    //}
    //  if(location.x<-40){

    //}
    //  if(location.y>840){

    //}
    //  if(location.y<-40){

    //}
  }
}
