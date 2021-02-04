void keyPressed() {

  //if (key =='v') {
  //  videoBool = !videoBool;
  //  if (videoBool) {
  //    video.start();
  //  } else {
  //    video.stop();
  //  }
  //}

  if (keyCode == ENTER) {
    intro = !intro;
    savePreferences();
  }
  if (keyCode == 97) {
    if (starWarsTheme.isPlaying()) {
      playStop = false;
      starWarsTheme.rewind();
      starWarsTheme.pause();
      theme = backupTheme;
    } else
    {
    backupTheme = theme;
    playStop = !playStop;
    starWarsTheme.play();
    scrollY = 0;
    theme = 9;
    }
  }

  if (keyCode == 98) {
    playListSet = !playListSet;
  }

  //if (keyCode == 102) {
  //  animate = !animate;
  //} 

  if (keyCode == 103) {
    leftTurn = !leftTurn;
  } 
  if (keyCode == 104
    ) {
    rightTurn = !rightTurn;
  }
  if (keyCode == 105) {
    downTurn = !downTurn;
  }
  if (keyCode == 106) {
    upTurn = !upTurn;
  }
  if (keyCode == 107) {
    leftTumble = !leftTumble;
  }
  if (keyCode == 108) {
    rightTumble = !rightTumble;
  }

  if (key == 'S') {
    smoothBool = !smoothBool;
  }

  if (key == 'H') {
    shuffle = !shuffle;
  }

  if (keyCode == 32) {
    playStop = !playStop;
  errorBoolSong = false;
  errorBoolList = false;
  errorBoolFile = false;
  errorBool = false;
  songBool = false;
  }

  if (key == 'r') {
    song.rewind();
  }
  if (key == 'p' || key == 'P') {
    toggleTxt = !toggleTxt;
  }

  if (key == '!') { 
    theme = 1;
    xRotate = xBackup;
    vol=1;
  }
  if (key == '@') {
    theme = 2;
    xRotate = xBackup;
    vol=1;
  }
  if (key == '#') { 
    theme = 3;
    xBackup = xRotate;
    xRotate = 2;
    vol=5;
  }
  if (key == '$') { 
    theme = 4;
    xRotate = xBackup;
    vol=1;
  }
  if (key == '%') {
    theme = 5;
    xRotate = xBackup;
    vol=2;
  }
  if (key == '^') {
    theme = 6;
    xRotate = xBackup;
    vol = 1;
  }
  if (key == '&') {
    theme = 7;
    xRotate = xBackup;
    vol=1;
  }

  if (key == '*') {
    theme = 8;
    xRotate = xBackup;
    vol=1;
  }

  if (key == '(') {
    theme = 9;
    xRotate = xBackup;
    vol=1;
  }

  if (key == ')') {
    theme = 10;
    xRotate = xBackup;
    vol=1;
  }

  if (key == 'd' || key == 'D') {
    xPanBackup = xPan += 0.01;
  } else if (key == 'a' || key == 'A') {
    xPanBackup = xPan -= 0.01;
  }

  if (key == '?' || key == '/') {
    backFWD = !backFWD;
  }

  if (keyCode == DOWN) {
    xBackup = xRotate -= 0.01;
  } else if (keyCode == UP) {
    xBackup = xRotate += 0.01;
  }
  if (keyCode== RIGHT) {
    zBackup = zRotate -= 0.005;
  } else if (keyCode == LEFT) {
    zBackup = zRotate += 0.005;
  }
  if (key == 'w' || key == 'W') {
    zoomBackup = zoom += 0.1;
  } else if (key == 'q' || key == 'Q') {
    zoomBackup = zoom -= 0.1;
  }

  if (key == 'z' || key == 'Z') {
    zLevelBackup = zLevel += 5;
  } else if (key == 'x' || key == 'X') {
    zLevelBackup = zLevel -=5;
  }

  if (key == '=' ) {
    vol += 0.1;
  } else if (key == '-') {
    vol -= 0.1;
  }

  if (key == '+') {
    amount += 0.01;
  } else if ( key == '_') {
    amount -= 0.01;
  }



  if (key == 'R') {
    //pauseAllSongs();
    loadDefaultSettings();
  }


  savePreferences();
}
