float x=0,y=0,z=5,x2=100,y2=300,time=0;
void intro(){
image(backgroundImage,width/2,height/2);
  
  x2=x2+0.11;
  y2=y2+0.055;
   image(background, x2, y2);
   
  pushMatrix();
  z=z+0.001;
      x=x+1;
  y=y+0.25;
  
  translate(x,y);
  rotate(z);
  image(astronaut,0,0);


 println("x"+x);
  popMatrix();
if ( x>1300)x=-300;
 

if ( y>1000)y=-100;
 
 
 t++;
 
 if (t>100){
   textMode(CENTER);
   textSize(120);
   fill(0);
   text("space",350,height/2);
    textMode(CENTER);
    textSize(124);
   fill(255);
    text("space",345,height/2);
 }
 
 
 
 
}
