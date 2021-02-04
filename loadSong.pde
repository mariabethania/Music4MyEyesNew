void loadMyPlayList() {
  //songSlot = 80;
  if (playListSet) {
    String[] playListSet = loadStrings("data/MyPlayList_"+nf(playListCount, 2, 0)+".mpl");
    if (playListSet == null) {
      errorBoolFile = true;
    } else 
    {
      for (int i = 0; i < playListSet.length; i++) {
        mySongFiles[i] = new File(playListSet[i]);
        myPlayList[i] = minim.loadFile(playListSet[i], 1024);
        myTitles[i] = mySongFiles[i].getName();
        tempPlayList[i] = minim.loadFile(playListSet[i], 1024);
        textSize(height*0.032);
        textAlign(CENTER, CENTER);
        text("Loading next playlist", width*0.5, height*0.5);

        if (myPlayList[i] == null) {
          //errorBoolSong = true;
          songSlot = i;
          myTitles[i] = "empty";
          //songSlotCopy = songSlot;
        } else
        {
          errorBoolSong = false;
        }
      }
    }
    boolean[] shuffleArray = new boolean[songSlot];
    for (int n = 0; n < songSlot; n++) {
      shuffleArray[n] = false;
    }
  } else 
  {
    String[] defaultPlayList = loadStrings("data/MyPlayList.mpl");
//println(defaultPlayList.length);
    if (defaultPlayList == null) {
      errorBoolList = true;
            songSlot = 1;
            //songSlotCopy = songSlot;
    } else 
    {
      for (int i = 0; i < defaultPlayList.length; i++) {
        //println("songSlot "+songSlot);
        mySongFiles[i] = new File(defaultPlayList[i]);
        myPlayList[i] = minim.loadFile(defaultPlayList[i], 1024);
        myTitles[i] = mySongFiles[i].getName();
        if (myPlayList[0] == null) {
            //myPlayList[0] = song;
          errorBoolSong = true;
            songSlot = 1;
            //songSlotCopy = songSlot;
        } else 
        {
          if (myPlayList[i] == null) {
        mySongFiles[i] = new File(defaultPlayList[i]);
        myPlayList[i] = minim.loadFile(defaultPlayList[i], 1024);
        myTitles[i] = mySongFiles[i].getName();
            songSlot = i;
            //songSlotCopy = songSlot;
          } else
          {
            errorBoolSong = false;
          }
        }
      }
//printArray(defaultPlayList);
//print(songSlot);
}
    shuffleArray = new boolean[songSlot];
    for (int n = 0; n < songSlot; n++) {
      shuffleArray[n] = false;
      shuffleCountDown = 0;
    }
  }
  //songSlotCopy = songSlot;
}




void loadAPlayList(File selection) {
  //songSlot = 80;
  if (selection == null) {
    //println("Window was closed or the user hit cancel.");
    title = "(empty)";
    songSlot = songSlotCopy;
  } else {
    //println("User selected " + selection.getAbsolutePath());
    String[] loadOnePlayList = loadStrings(selection.getAbsolutePath());
        mySongFiles[0] = new File(loadOnePlayList[0]);
        myPlayList[0] = minim.loadFile(mySongFiles[0].getAbsolutePath(), 1024);
        if (myPlayList[0] == null) {
      theFile = selection;
      errorBoolFile = true;
      songSlot = 1;
        myTitles[0] = "empty";
      //songSlotCopy = songSlot;
    } else
    {
      for (int i = 0; i < loadOnePlayList.length; i++) {
        mySongFiles[i] = new File(loadOnePlayList[i]);
        myPlayList[i] = minim.loadFile(mySongFiles[i].getAbsolutePath(), 1024);
        myTitles[i] = mySongFiles[i].getName();
        if (myPlayList[i] == null) {
          //errorBoolSong = true;
          songSlot = i;
//println(songSlot);
          //songSlotCopy = songSlot;
        } else
        {
          errorBoolSong = false;
        }
      }
    }
    shuffleArray = new boolean[songSlot];
    for (int n = 0; n < songSlot; n++) {
      shuffleArray[n] = false;
      //println(shuffleArray[n]);
    }
  }
  //songSlotCopy = songSlot;
}




void loadSong(File selection) {
  if (selection == null) {
    //println("Window was closed or the user hit cancel.");
    title = "(empty)";
  } else {                                                     ////////////// new song loading code
    songCount = floor(mouseX/songInc);
    songIndex = songCount;
    mySongFiles[songIndex] = selection;
    //println("Files  "+mySongFiles[songIndex]);
    myPlayList[songIndex] = minim.loadFile(selection.getAbsolutePath(), 1024);
    //println("Play  "+myPlayList[songIndex]);
    myStrings[songIndex] = selection.getAbsolutePath();
    //println("Strings  "+myStrings[songIndex]);
    myTitles[songIndex] = selection.getName();
    //println("Titles  "+myTitles[songIndex]);
    if (myPlayList[songIndex] == null) {
      //println(songIndex);
      errorBoolSong = true;
      myTitles[songIndex] = "empty";
    } else
    {
      errorBoolSong = false;
      //filePos++;
      //namePos++;
    }
  }
}
