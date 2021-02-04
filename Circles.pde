class Circles {
  
  //int x;
  //int y;
  //int z;
  float gama;
  float rad = 1;
  float lifeSpan = 255;
  
  PVector radio;
  PVector grow;
  PVector pos;
  
 Circles(int ix, int iy, int freq, float amp) {
   //for (int i = 0; i < (spikex*spikey); i++) {
   pos = new PVector(ix+(areax*2),iy+(areay*2),0);
   radio = new PVector(0,0,0);
   grow = new PVector(10,10,0);
   gama = (fft.getBand(freq)*amp);
   //if (gama > 240) {
   //  gama = 240;
   //} //else if (gama < 20) {
   //  //gama = 20;
   ////}
   ////gama +=15;
 }
  
 void update(){
   radio.add(grow);
   //pos = 
   lifeSpan -= 20;//fft.getBand(gama);
   
 }

  boolean isDead() {
    if (lifeSpan <= 0) {
     return true;
  } 
  else {
      return false;
    }
  }

 void display() {
   noFill();
   stroke(0,gama,gama,lifeSpan);
//   pushMatrix();
//   translate(0,0,0);
   ellipseMode(CENTER);
   ellipse(pos.x,pos.y,radio.x,radio.y);
//   popMatrix();
 }
  
}

                                          // this function is here just due to not having a better place to put it
void endOfShuffle() {

  for (int i = songIndex; i < songSlot; i++) {
          myPlayList[i] = myPlayList[i+1];
          myTitles[i] = myTitles[i+1];
        }
        songSlot--;
        
}


class Timer {

float Time;

Timer(float set) {
Time = set;
}

float getTime() {
 return(Time); 
}

void setTime(float set) {
 Time = set; 
}

void countUp() {
 Time += 1/frameRate; 
}

void countDown() {
 Time -= 1/frameRate; 
}

}
