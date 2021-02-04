class Particle1 {
  
  PVector gravity;
  PVector velocity;
  PVector acceleration;
  PVector col;
  float lifeSpan = 255;
  //float z;
  //float n = 0;
  float acc1 = 1;

  Particle1(int x1, int y1, int freq, float amp) {
        //for(int i = 0; i < (spikex*spikey);i++) {
          //gravity = new PVector(random(x1,x1+(areax*4)),random(y1,y1+(areay*4)),0);//x1+(areax*2),y1+(areay*2),0);
          //velocity = new PVector(random(-acc1,acc1),random(-acc1,acc1),fft.getBand(freq)*norm);
          //acceleration = new PVector(random(-acc1,acc1),random(-acc1,acc1),-20);
          gravity = new PVector(x1+(areax*2),y1+(areay*2),0);//x1+(areax*2),y1+(areay*2),0);
          velocity = new PVector(random(-acc1,acc1),random(-acc1,acc1),fft.getBand(freq)*amp*vol);
          acceleration = new PVector(random(-acc1,acc1)+(particleX*0.8)+particleX,random(-acc1,acc1),-20); //     -(particleX*0.8)
          //col = new PVector(150,100,255);
          col = new PVector(0,240,200);
   if (velocity.z > 150) {
     velocity.z = 150;
   } //else if (gama < 20) {
     //gama = 20;
   //}
   //velocity.z +=010;
          
        //}
  }  
  
  void update(){
    velocity.add(acceleration);
    gravity.add(velocity);
    lifeSpan -= 5;
//println(lifeSpan);
//println(velocity.z);
    //col.x += gravity.z/10;
    //col.y += gravity.z/5;
    //col.z -= gravity.z;

    //col.x += gravity.z*10;
    //col.y -=gravity.z/10;
    //col.z -= gravity.z*4;
}
  
  boolean isDead() {
    if (lifeSpan <= 0) {      // || gravity.z < 0
     return true;
  } 
  else {
      return false;
    }
}
  
  void display() {
     
    //stroke(0,lifeSpan);
    //strokeWeight(2);
    pushMatrix();
    noStroke();
    //fill(255);
    fill(gravity.z,(-gravity.z)+500,gravity.y-150,(gravity.z+1)*5);
    //fill(random(255),random(255),gravity.y-150,lifeSpan);
    //fill(col.x,col.y,col.z, lifeSpan);
    //fill(255,255,255,lifeSpan);
    translate((gravity.x),(gravity.y),gravity.z);
    if (gravity.z > 0) {
    sphere(3);
    }
    popMatrix();
    }
    
}
