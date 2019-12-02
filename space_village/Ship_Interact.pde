int v=80;
boolean store;
void shipInteract(){
  fuel++;
  if (fuel>100)fuel=100;
  //fill(50,200);
 // ellipse(width/2,height/2,250,250);
    shop.resize(v,v);
  image(shop,550,550);
  fill(255);
  //velo
  //thrust
  //lives
  //fireRate
  if (dist(mouseX,mouseY,550,550)<40){
    v=100;
    
  }else{
   v=80; 
  }
  
  if(store==true){
       println("4"+store);
        Shop();
  }
  
  println("1"+store);
}
void mouseClicked(){


    if (dist(mouseX,mouseY,550,550)<40&&store==true){
    store=false;
  
  }
  
  if (dist(mouseX,mouseY,550,550)<40&&store==false){
    store=true;

  }
   
    

  
  
}
