void savePlayList(File selection) {
//println("Yata pues...");
  if (selection == null) {
    //println("Window was closed or the user hit cancel.");
  } else {
    //println("User selected " + selection.getAbsolutePath());
    String[] saveMyPlayList = new String[myStrings.length];
    for( int i = 0; i < saveMyPlayList.length; i++) {
      saveMyPlayList[i] = myStrings[i];
    }
    saveStrings(selection.getAbsolutePath(), saveMyPlayList);
    //println(selection.getAbsolutePath());
  }

}

void saveSettings(File selection) {
//println("Yata pues...");
  if (selection == null) {
    //println("Window was closed or the user hit cancel.");
  } else {
    //println("User selected " + selection.getAbsolutePath());
    String[] saveMySettings = new String[14];
    saveMySettings[0] = Integer.toString(spikex);
    saveMySettings[1] = Integer.toString(spikey);
    saveMySettings[2] = Boolean.toString(intro);
    saveMySettings[3] = Float.toString(vol);
    saveMySettings[4] = Float.toString(ampInc);
    saveMySettings[5] = Float.toString(zLevelBackup);
    saveMySettings[6] = Float.toString(xPan);
    saveMySettings[7] = Float.toString(xBackup);
    saveMySettings[8] = Float.toString(zLevel);
    saveMySettings[9] = Integer.toString(theme);
    saveMySettings[10] = Float.toString(zoom);
    saveMySettings[11] = Float.toString(xRotate);
    saveMySettings[13] = Float.toString(yRotate);
    saveStrings(selection.getAbsolutePath(), saveMySettings);
    //println(selection.getAbsolutePath());
}
}

void savePreferences() {
  String[]  myPreferences = new String[14];
    myPreferences[0] = Integer.toString(spikex);
    myPreferences[1] = Integer.toString(spikey);
    myPreferences[2] = Boolean.toString(intro);
    myPreferences[3] = Float.toString(vol);
    myPreferences[4] = Float.toString(ampInc);
    myPreferences[5] = Float.toString(zLevelBackup);
    myPreferences[6] = Float.toString(xPan);
    myPreferences[7] = Float.toString(xBackup);
    myPreferences[8] = Float.toString(zLevel);
    myPreferences[9] = Integer.toString(theme);
    myPreferences[10] = Float.toString(zoom);
    myPreferences[11] = Float.toString(xRotate);
    myPreferences[12] = Float.toString(zRotate);
    myPreferences[13] = Float.toString(yRotate);
  saveStrings("data/MySettings.m4me", myPreferences);
  
}
