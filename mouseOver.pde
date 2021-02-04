void mouseOver() {

    if (mouseY < height/30) {
      fill(255,255,0);
      //textAlign(LEFT);
      textSize(height*0.02);
      text("Double Click or Space Bar toggles Play/Stop",width*0.5,height*0.1);
    
  }


  
  textSize(height*0.016);
  fill(255);

if (mouseX > 0 && mouseX < width && mouseY > height*0.96 && mouseY < height) {
  songTime = true;
} else
{
  songTime = false;
}
  if (mouseX > width*0.9 && mouseY > height*0.47 && mouseY < height*0.53) {
    text(int(smoothBool), width*0.99, height*0.5);
  }

  if (mouseX < width*0.1 && mouseY > height*0.47 && mouseY < height*0.53) {
    textAlign(LEFT);
    text(inputDriver, 0, height*0.5);
  }

  if (mouseY < height/30) {
    showMenu = true;
  } else {
    showMenu = false;
    //showTitle = false;
  }


  if (mouseY > 0 && mouseX < width && mouseY <= height/30) { 
    songCount = floor(mouseX/songInc);
    //title = myTitles[songCount];
       if (myPlayList[songCount] == null) {
          songBool = true;
      } else {
          songBool = false;
      }
     textSize(height*0.02);
    if (songCount < (songSlot*0.33)) {
      textAlign(LEFT);
    } else
    if (songCount >= (songSlot*0.33) && songCount <= (songSlot*0.66)) {
      textAlign(CENTER);
    }
else
    if (songCount > (songSlot*0.66)) {
      textAlign(RIGHT);
    }

    if (myTitles[songCount] == null) {
      //title = "Empty";
      fill(255);
      text("empty", mouseX, mouseY+(height*0.06));
    } else
    {
      fill(255);
      text(myTitles[songCount], mouseX, mouseY+50);
    }
textAlign(LEFT,TOP);
}

  //if (mouseX > 0 && mouseX < (width*0.05)*2 && mouseY > height*0.04 && mouseY < height*0.08) {
  //  stroke(255);
  //  //fill(0, 0, 255,100);
  //  //rect(0, height*0.03, width*0.07, height*0.03);
  //  fill(255);
  //  textSize(24);
  //  textAlign(LEFT,TOP);
  //  text("Load Playlist..", width*0.005, height*0.05);
  //}

    if (mouseX >  width/16*2.5 && mouseX < width/16*5.5 && mouseY < height && mouseY > height*0.96) {
      //textSize(height*0.02);
      fill(255,255,0);
      text("Left click for playlist",mouseX,mouseY-height*0.035);
      text("Right click for settings",mouseX,mouseY-height*0.02);
    }


  if (mouseY < height && mouseY > height*0.96) {   // aqui falta codigo
fill(255);
    int num = theme;
    String themeName ="";      
    textSize(height*0.016);
    textAlign(CENTER);
    text("[ Save.. ]", (width/16*3), height*0.98);
    text("[ Load.. ]", (width/16)*5, height*0.98);
    text("[ Normalize = "+round(ampInc*1000)+" ]", (width/16)*7, height*0.98);
    text("[ Volume = "+round(vol*10)+" |", (width/16)*9, height*0.98);
    text("[ Rows = "+spikey+" |", (width/16*11), height*0.98);
    text("[ Columns = "+spikex+" ]", width/16*13, height*0.98);
    text("[ Load Picture ]", (width/16)*15, height*0.98);
    //text("[<<",3,height*0.98);
    //text("[",30,height*0.98);
    //text(">>]",width-30,height*0.98);
    switch(num) { // shows theme names
    case 1:
      themeName = "In the Forest";
      break;
    case 2:
      themeName = "Under the Sea";
      break;
    case 3:
      themeName = "Thunderstorm";
      break;
    case 4:
      themeName = "Sahara";
      break;
    case 5:
      themeName = "In Space";
      break;
    case 6:
      themeName = "8 bit Adventure";
      break;
    case 7:
      themeName = "July 4th";
      break;
    case 8:
      themeName = "Drops & Ripples";
      break;
      //case 8:
      //themeName = "Star-Spangled Banner (B)";
      //break;
    case 9:
      themeName = "Star Wars";
      break;
    case 10:
      themeName = "My Picture";
      break;
    }
    text("[ Theme = "+themeName +" ]", width/16, height*0.98);
  }
}
