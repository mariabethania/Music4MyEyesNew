//<>// //<>// //<>//
void mouseClicked(MouseEvent evt) {
  //higher = 0;
  if (evt.getCount() == 2) doubleClicked();
  //trimL = mouseX;
  //trimR = mouseX;
}

void doubleClicked() {
  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height/30 && mouseButton == LEFT) {
    //playStop = !playStop;
    //if (mouseX > boxX && mouseX < boxX+sizeX && mouseY < (height-(circleDiameter*0.4))) {              ////////////******
    songCount = floor(mouseX/songInc);
    if (myPlayList[songCount] == null) {                                      ////////////  *****
    } else
    {
      songIndex = songCount;                                                     ////////////********
      song.pause();
      song.rewind();
      song = myPlayList[songIndex];
      title = myTitles[songIndex];
      playStop = !playStop;
    }
    for (int i = 0; i < 24; i++) {
    }
    //}
  }

  if (mouseX > width*0.47 && mouseX < width*0.53 && mouseY > height*0.47 && mouseY < height*0.53) {
    if (w > 800) {
    w = 800;
    h = 600;
    } else
    {
    w = 1600;
    h = 1200;
    }
  }


}

void mousePressed() {
  
  errorBoolSong = false;
  errorBoolList = false;
  errorBoolFile = false;
  errorBool = false;
  songBool = false;
  
  
//println(i*(songSlot/(songSlot/(songSlot*0.5))));
  if (mouseX > width*0.9 && mouseY > height*0.47 && mouseY < height*0.53) {
      smoothBool = !smoothBool;
    }

    if (mouseButton == LEFT && mouseX < width*0.1 && mouseY > height*0.47 && mouseY < height*0.53) {
      inputDriver += 1;
    } else 
    if (mouseButton == RIGHT && mouseX < width*0.1 && mouseY > height*0.47 && mouseY < height*0.53) {
      inputDriver -= 1;
    }

    if (mouseX > 0 && mouseX < width/16*2 && mouseY > height*0.96 && mouseY < height*0.985 && mouseButton == LEFT) {
      if (theme < 10) {
        theme++;
      } else {
        theme = 1;
      }
        if (theme == 3) {
          xBackup = xRotate;
          xRotate = 2;
          vol = 3;
        } else {
          xRotate = xBackup; 
          zRotate = zBackup; 
          zLevel = zLevelBackup;
          vol = 1;
        }
    } else if (mouseX > 0 && mouseX < width/16*2 && mouseY > height*0.96 && mouseY < height*0.985 && mouseButton == RIGHT) {
      if (theme > 1) {
        theme--;
      } else {
        theme = 10;
      }
        if (theme == 3) {
          xBackup = xRotate;
          xRotate = 2;
          vol = 3;
        } else {
          xRotate = xBackup; 
          zRotate = zBackup; 
          zLevel = zLevelBackup;
          vol = 1;
        }
    }

    //if (mouseX >= 0 && mouseX <= 30 && mouseY >= (height-30) && mouseY <= (height-14) && mouseButton == LEFT) {
    //  if (songCount < 0) { songCount = playList.length;}
    //    else{
    //    pauseAllSongs();
    //    songCount--;

    //      if (playList[songCount] == null) {}
    //      else {
    //      println(songCount);    //fft.forward(song.mix);
    //      println(playList[songCount]);      
    //      title = playList[songCount].getAbsolutePath();
    //      song = minim.loadFile(title, 1024);
    //      fft = new FFT(song.bufferSize(), song.sampleRate());
    //      song.play();
    //      }
    //  }
    // }

    //if (mouseX >= (width-30) && mouseX <= width && mouseY >= (height-30) && mouseY <= (height-14) && mouseButton == LEFT) {
    //  if (songCount > playList.length) {songCount = 0;} 
    //    else{
    //    pauseAllSongs();
    //    songCount++;

    //      if (playList[songCount] == null) {}
    //      else {
    //      println(songCount);    //fft.forward(song.mix);
    //      println(playList[songCount]);      
    //      title = playList[songCount].getAbsolutePath();
    //      song = minim.loadFile(title, 1024);
    //      fft = new FFT(song.bufferSize(), song.sampleRate());
    //      song.play();
    //      }
    //  }
    //}

    if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height/30 && mouseButton == RIGHT) { //load one song on right clicked slot
      selectInput("Load song from *.mpl file...", "loadSong");  //  jump to "loadSettings()"
      songCount = floor(mouseX/songInc);

      if (myPlayList[songCount] == null) {
        errorBoolSong = true;
        //playList();
      } else
      {
        errorBoolSong = false;
        //filePos++;
        //namePos++;
      }
    }

    //*********************** begins play, pause, rewind thingies
    if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height/30 && mouseButton == LEFT) {

      //************************************************************************************************************************************
      //song.rewind(); 
      //song.pause();
      songCount = floor(mouseX/songInc);
      if (myPlayList[songCount] == null) {
          songBool = true;
      } else {
      //  fill(255,0,0);
      //rect((width/songSlot)*(songInc), 0, ((width/songSlot)*1)+width/songSlot, height*0.032);
      r = 0;
      g = 200;
      b = 0;
        fill(75);
      rect((width/songSlot)*(songCount), 0, width/songSlot, height*0.032);
        depth1 =20;
        depth2 = 30;
        passXoff = 0.2;
        passYoff = 0.2;
        passFX = 0.12;
        passFY = 0.12;
        ampInc = 0.001;
        songIndex = songCount;
        song.pause();
        song.rewind();
        title = myTitles[songIndex];
        song = myPlayList[songIndex];
        scrollY = height*0.15;
        theme = songIndex+1;
        if (theme == 10) {
          vol = 1.5;
        } else
          if (theme == 5) {
            vol = 1.7;
          } else
          {
            vol = 1;
          }
        if (theme > 10) {
          theme = floor(random(1, 11));
        }
        if (theme == 3) {
          xBackup = xRotate;
          xRotate = 2;
          vol = 3;
        } else {
          xRotate = xBackup; 
          zRotate = zBackup; 
          zLevel = zLevelBackup;
          vol = 1;
        }
      }
      //playStop = !playStop;      
      //println(title);
    }


    //************************************************************************************************************************************

    //else if (mouseX >  0 && mouseX < width && mouseY > 0 && mouseY < height/30 && mouseButton == RIGHT) { 
    //  pauseAllSongs();
    //selectInput("Select a song to load...", "loadSong");  // Jump to "void loadSong()" (song7 - song20)
    //ratonX = mouseX;
    //ratonY = mouseY;
    //}


    //}      


    //*********** ends play, pause, rewind thingies and begins load abd save file thingy

    //if (mouseX > (width/20)*19 && mouseX <  width && mouseY > 0 && mouseY < height/30 && mouseButton == RIGHT) {
    //  selectInput("Select a playlist file...", "loadPlayList");  // Jump to "void loadPlayList()"
    //}

    if (mouseX >  width/16*2.5 && mouseX < width/16*3.5 && mouseY > height*0.96 && mouseY < height*0.98 && mouseButton == LEFT) {
      selectOutput("Save PlayList to *.m4me file", "savePlayList");  // jump to "saveSettings()"
      ratonX = mouseX;
      ratonY = mouseY;
    }

    if (mouseX >  width/16*4.5 && mouseX < width/16*5.5 && mouseY > height*0.96 && mouseY < height*0.98 && mouseButton == LEFT) {
      selectInput("Load a playlist from *.m4me file...", "loadAPlayList");  //  jump to "loadSettings()"
      //ratonX = mouseX;
      //ratonY = mouseY;
    }


    if (mouseX >  width/16*2.5 && mouseX < width/16*3.5 && mouseY > height*0.96 && mouseY < height*0.98 && mouseButton == RIGHT) {
      selectOutput("Save settings to *.m4me file", "saveSettings");  // jump to "saveSettings()"
      ratonX = mouseX;
      ratonY = mouseY;
    }

    if (mouseX >  width/16*4.5 && mouseX < width/16*5.5 && mouseY > height*0.96 && mouseY < height*0.98 && mouseButton == RIGHT) {
      selectInput("Load settings from *.m4me file...", "loadSettings");  //  jump to "loadSettings()"
      ratonX = mouseX;
      ratonY = mouseY;
    }


    //if (mouseX >  0 && mouseX < width && mouseY < height-50 && mouseY > 50 && mouseButton == LEFT) {
    //  pauseOnly();
    //}
    if (mouseX >  width/16*12.4 && mouseX < width/16*13.6 && mouseY > height*0.96 && mouseY < height*0.985 && mouseButton == RIGHT) {
      spikex--;
      if (spikex < 4) {
        spikex++;
      } else {
        areax = cols/spikex;   
        fxy -= 0.01;
      }
    }
    if (mouseX >  width/16*12.4 && mouseX < width/16*13.6 && mouseY > height*0.96 && mouseY < height*0.985 && mouseButton == LEFT) {
      spikex++;
      if (spikex > 40) {
        spikex--;
      } else {
        areax = cols/spikex;
        fxy += 0.01;
      }
    }
    if (mouseX >  width/16*10.5 && mouseX < width/16*11.5 && mouseY > height*0.96 && mouseY < height*0.985 && mouseButton == RIGHT) {
      spikey--;
      if (spikey < 4) {
        spikey++;
      } else {
        areay = rows/spikey;
        fxy -= 0.01;
      }
    }
    if (mouseX >  width/16*10.5 && mouseX < width/16*11.5 && mouseY > height*0.96 && mouseY < height*0.985 && mouseButton == LEFT) {
      spikey++;
      if (spikey > 10) {
        spikey--;
      } else {
        areay = rows/spikey;
        fxy += 0.01;
      }
    }
    if (mouseX >  width/16*9 && mouseX < width/16*9.5 && mouseY > height*0.96 && mouseY < height*0.985 && mouseButton == RIGHT) {
      vol -= 0.1;
    }
    if (mouseX >  width/16*9 && mouseX < width/16*9.5 && mouseY > height*0.96 && mouseY < height*0.985 && mouseButton == LEFT) {
      vol += 0.1;
    }
    if (mouseX >  width/16*8.5 && mouseX < width/16*9 && mouseY > height*0.96 && mouseY < height*0.985 && mouseButton == RIGHT) {
      vol -= 1;
    }
    if (mouseX >  width/16*8.5 && mouseX < width/16*9 && mouseY > height*0.96 && mouseY < height*0.985 && mouseButton == LEFT) {
      vol += 1;
    }
    if (mouseX >  width/16*7 && mouseX < width/16*7.7 && mouseY > height*0.96 && mouseY < height*0.985 && mouseButton == RIGHT) {
      if (ampInc > 0) { 
        ampInc -= 0.001;
      } else {
        ampInc = 0;
      }
    }
    if (mouseX >  width/16*7 && mouseX < width/16*7.7 && mouseY > height*0.96 && mouseY < height*0.985 && mouseButton == LEFT) {
      ampInc += 0.001;
    }
    if (mouseX >  width/16*6.3 && mouseX < width/16*7 && mouseY > height*0.96 && mouseY < height*0.985 && mouseButton == RIGHT) {
      if (ampInc > 0) { 
        ampInc -= 0.01;
      } else {
        ampInc = 0;
      }
    }
    if (mouseX >  width/16*6.3 && mouseX < width/16*7 && mouseY > height*0.96 && mouseY < height*0.985 && mouseButton == LEFT) {
      ampInc += 0.01;
    }

    if (mouseX >  width/16*14.5 && mouseX < width/16*15.5 && mouseY > height*0.96 && mouseY < height*0.985 && mouseButton == LEFT) {
      selectInput("Load a picture...", "loadAPicture");  //  jump to "loadAPicture()"
    }


    // select a point to start playing or continue playing if "isPlaying"

    if (mouseX > 0 && mouseX < width && mouseY > height*0.985 && mouseY < height && mouseButton == LEFT) {  

      if (song == null) {
      } else if (song.isPlaying()) {
        posx = int(map(mouseX, 0, width, 0, song.length()));
        song.cue(int(posx));
      }
    }

    savePreferences();
  }
