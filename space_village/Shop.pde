void Shop(){
image(interior,width/2,height/2);

image(shipInterior,width/2,height/2);

textSize(10);
text("engine power",width/2-50,500);
text("engine effeciency",width/2-50,520);
text("engine max speed",width/2-50,540);
text("gun damage",width/2-50,560);
text("gun shooting speed",width/2-50,580);
text("shields",width/2-50,600);
text("repair",width/2-50,620);
text("",width/2-50,640);

myShip.velocity = new PVector(0, 0);
}
