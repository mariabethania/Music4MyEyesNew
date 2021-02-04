void pauseAllSongs() {
 if (song == null){
 
 } else if(song.isPlaying()) {
 song.pause(); 
 song.rewind();
 }
 //xRotate = xBackup;
 //zRotate = zBackup;
 //zLevel = zLevelBackup;
 //green = 0;
 //blue = 0;
 }
 
void pauseOnly(){
 if (song == null){
 } else if(song.isPlaying()) {
   song.pause();
 } else {song.play();
 }//else if (song.position() > 0) {song.play();}
 }
