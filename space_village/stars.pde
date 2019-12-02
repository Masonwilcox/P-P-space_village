class Stars extends GameObject {


  
 Stars() {
    location = new PVector (random(0,1100),random(0,800));


   

    lives=1;
    size=3;
    t=0;
  }
  void show() {

      fill(255);
      ellipse(location.x, location.y, size, size);

    

      
      
    
  }
  void act() {
    super.act();

if (roomx==97&&roomy==97&&dist(location.x,location.y,width/2,height/2)<290){
  lives=0;
}

  }
}
