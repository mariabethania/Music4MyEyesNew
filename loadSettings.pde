void loadSettings(File selection) {
  songSlot = 128;
  if (selection == null) {
    //println("Window was closed or the user hit cancel.");
    title = "(empty)";
  } 
  else {
    //println("User selected " + selection.getAbsolutePath());
      String[] loadMySettings = loadStrings(selection.getAbsolutePath());

    //printArray(loadMySettings);
    spikex = int(loadMySettings[0]);
    spikey = int(loadMySettings[1]);  
    intro = boolean(loadMySettings[2]);  
    vol = float(loadMySettings[3]);  
    ampInc = float(loadMySettings[4]);  
    zLevelBackup = float(loadMySettings[5]);  
    xPan = float(loadMySettings[6]);  
    xBackup = float(loadMySettings[7]);  
    zLevel = float(loadMySettings[8]);
    theme = int(loadMySettings[9]);  
    zoom = float(loadMySettings[10]);  
    xRotate = float(loadMySettings[11]);
    zRotate = float(loadMySettings[12]);  
    yRotate = float(loadMySettings[13]);  
  }
}

void loadDefaultSettings() {
String[] defaultSettings = loadStrings("data/DefaultSettings.m4me");
    spikex = int(defaultSettings[0]);
    spikey = int(defaultSettings[1]);  
    intro = boolean(defaultSettings[2]);  
    vol = float(defaultSettings[3]);  
    ampInc = float(defaultSettings[4]);  
    zLevelBackup = float(defaultSettings[5]);  
    xPan = float(defaultSettings[6]);  
    xBackup = float(defaultSettings[7]);  
    zLevel = float(defaultSettings[8]);
    theme = int(defaultSettings[9]);  
    zoom = float(defaultSettings[10]);  
    xRotate = float(defaultSettings[11]);
    zRotate = float(defaultSettings[12]);  
    yRotate = float(defaultSettings[13]);  
}

void loadPreferences() {
String[] myPreferences = loadStrings("data/MySettings.m4me");
    spikex = int(myPreferences[0]);
    spikey = int(myPreferences[1]);  
    intro = boolean(myPreferences[2]);  
    vol = float(myPreferences[3]);  
    ampInc = float(myPreferences[4]);  
    zLevelBackup = float(myPreferences[5]);  
    xPan = float(myPreferences[6]);  
    xBackup = float(myPreferences[7]);  
    zLevel = float(myPreferences[8]);
    theme = int(myPreferences[9]);  
    zoom = float(myPreferences[10]);  
    xRotate = float(myPreferences[11]);
    zRotate = float(myPreferences[12]);  
    yRotate = float(myPreferences[13]);  
}

void loadAPicture(File selection) {
  if (selection == null) {
    //println("Window was closed or the user hit cancel.");
    title = "(empty)";
  } 
  else {
    //println("User selected " + selection.getAbsolutePath());
      img = loadImage(selection.getAbsolutePath());
  img.resize(w/3, h/3);
  }
}
