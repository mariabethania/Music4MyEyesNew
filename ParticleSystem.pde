class ParticleSystem1 {
  //int x1 = 0;
  //int y1 = 0;
  //int freq = 0;

  ArrayList<Particle1> pArray1;
  ArrayList<Circles> circles;
  //ArrayList<WaterRipples> agua;

  ParticleSystem1() {
    pArray1 = new ArrayList<Particle1>();
    circles = new ArrayList<Circles>();
    //agua = new ArrayList<WaterRipples>();
  }

  void addParticle1(int ix, int iy, int freq, float norm) {
    pArray1.add(new Particle1(ix*Scale, iy*Scale, freq,norm));  
    //if (x1 < width){x1 += cols; freq++;} else {x1 = areax/2; y1 += rows;}
    //if (y1 >= height){y1 = 0; freq = 0;}// y += areay;}
    //if (y > height){y = areay/2;}
    //println(cols+" - "+rows);
  }
  
  void addCircles(int ix, int iy, int freq, float norm) {
    circles.add(new Circles(ix*Scale,iy*Scale,freq, norm));
    
    }

//  void addWater(float ix, float iy, float freq) {
//water.buffer1[int(ix)][int(iy)] = 960;
//  }

  void run() {
    for (int i = pArray1.size()-1; i >= 0; i--) {
      Particle1 p1 = pArray1.get(i); 
      p1.update();
      p1.display();

      if (p1.isDead()) {
        pArray1.remove(i);
        //timer.countDown();
//println(pArray1.size());

    }
    }
  }

  void runCircles() {
    for (int i = circles.size()-1; i >= 0; i--) {
      Circles c = circles.get(i); 
      c.update();
      c.display();

      if (c.isDead()) {
        circles.remove(i);
        //timer.countDown();
//println(circles.size());
    }
    }
  }

  //void runWater() {
  //  for (int i = agua.size()-1; i >= 0; i--) {
  //    WaterRipples ag = agua.get(i); 
  //    //ag.update();
  //    ag.display();
      
  //    //if (ag.isDead()) {
  //    //  agua.remove(i);
  //    //}
  //  }
  //}
}
