 Bee[] ron;
 void setup(){     
   size(900,900); 
    ron = new Bee[50];
     for (int i = 0; i < ron.length; i++){
     ron[i] = new Bee();
   }
 }  //end setup 
 
 void draw(){    
   //move and show the bees  
   background(235, 255, 250);
   for(int j = 0; j < ron.length; j++){
     ron[j].show();
     ron[j].move();
   }
   fill(240, 221, 101);
   ellipse(mouseX,mouseY, 80,80);
   fill(0);
   textSize(20);
   text("honey", mouseX-20,mouseY);
   //hive
   fill(240,221,101);
   ellipse(20,10,50,40);
   ellipse(30,50,70,40);
   ellipse(30,90,80,40);
   fill(171, 123, 51);
   ellipse(0,60,50,50);
  
 }  //end draw
 
 
 class Bee{    
   int myX, myY, myColor, mySize;
   Bee(){
     myX = (int)(Math.random()*50)+10;
     myY = (int)(Math.random()*600)+10;
     mySize = (int)(Math.random()*70)+20;
     //myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
     myColor = color(245, 217, 108);
   }//end constructor
   
   void move(){
     if (myX < mouseX){
       myX = myX + (int)(Math.random()*8)-2;
     }
     else if (myX > mouseX){
       myX = myX + (int)(Math.random()*8)-6;
     }
     if (myY < mouseY){
       myY = myY + (int)(Math.random()*10)-4;
     }
     else if (myY > mouseY){
       myY = myY + (int)(Math.random()*10)-6;
     }
   }//end move
   
   void show(){
     noStroke();
     fill(myColor);
     ellipse(myX,myY, mySize,mySize);//body
     fill(84, 58, 6);
     rect(myX-(mySize/2), myY, mySize, 20);//stripe
     fill(176, 245, 245);
     if (mySize > 50){
       ellipse(myX+40,myY+10, mySize-40,mySize-40);//right wing 
       ellipse(myX-40,myY+10, mySize-40,mySize-40);//left wing
     }
     else if (mySize < 30){
       ellipse(myX+30,myY+10, mySize-30,mySize-30);//right wing 
       ellipse(myX-30,myY+10, mySize-30,mySize-30);//left wing 
     }
     else{
       ellipse(myX+20,myY+10, mySize-30,mySize-30);//right wing 
       ellipse(myX-20,myY+10, mySize-30,mySize-30);//left wing 
     }
   }//end show
 } //end Bee
