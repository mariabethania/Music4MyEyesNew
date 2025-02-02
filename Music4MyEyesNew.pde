import processing.video.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
import drop.*;
//import javax.sound.sampled.*;

SDrop drop;
//Capture video;
Minim       minim;
AudioPlayer song,starWarsTheme;
AudioInput input;
FFT         fft;
AudioOutput output;
//Oscil       wave;
//FilePlayer filePlayer;
//Mixer.Info[] mixerInfo;
//LiveInput liveIn;

ParticleSystem1 ps1;


//PFont f;                // STEP 1 Declare PFont variable

//String [] noteName = {"C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"};  
//String [] octaveNum = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"};
//String [][] tecla =new String [12][10];
//String [][] noteNameOct = new String [132][40];
//String [] titleList;
//String[]  saveMySettings = new String[40];

String title;

int cols, rows;
int rowsPan;
//int colsPan;
int Scale = 4;
//int ScaleInc= 10;
int areax;
int areaxPan;
int areay;
int areayPan;
int xPos, yPos, zPos;
int noteX;
int noteY;
int spikex, spikey = 8;
int ratonX, ratonY;
int depth1 = 20, depth2 = 30;
int theme,backupTheme;
int songSlotCopy;
int songCount = 0;
int songIndex = 0;
//int channel,pitch, velocity;
float [] [] terrain;
float [] [] flagterrain;
float [] [] flatterrain;
float [] [] colorterrain;
int w;
int h;
float [][] noteArray;
float [][] colorArray;
float [][] pyramidArray;
float [][] flagArray;
float [][] cubeArray;
float [][] cubeArray1;
float [][] rayoArray;
float [][] laFoto;
float [] freqA;
float [] freqB;
int filePos = 0;
int namePos = 0;
int playListLength = 128;
String[] myStrings = new String[playListLength];
String[] myTitles = new String[playListLength];
File[] mySongFiles = new File[playListLength];
AudioPlayer[] myPlayList = new AudioPlayer[playListLength];
AudioPlayer[] tempPlayList = new AudioPlayer[playListLength];
boolean[] shuffleArray;
int shuffleCountDown = 0;

String myText;
float strkR;
float strkG;
float strkB;
float tintR, tintG, tintB;
float zBackup = 0.0;
float zRotate = 0.0;
float xBackup = PI/3;
float xRotate = PI/3;
float yRotate = 0;
float xPanBackup;
float xPan = 2.05;
float zLevel = -20;
float zLevelBackup = 135;
float zoomBackup = 2;
float zoom = 2;
float flying = 0.01;
float particleX = 0;
float particleY = 0;
float r = 200;
float g = 0;
float b = 0;
//float fly;
//float textRotate = PI/2;
//float octaveInc=0.1;
//float octave;
float posx;
float fxy ;
float passXoff, passYoff, passFX, passFY;
float scrollY;
boolean backFWD = true;
boolean toggleTxt = true;
boolean intro = true;
boolean introMsg = true;
boolean errorBool = false;
boolean errorBoolList = false;
boolean errorBoolSong = false;
boolean errorBoolFile = false;
boolean playStop= false;
int playListCount = 3;
boolean playListSet = false;
int songSlot = 80;
float songInc;
float vol = 1;
float amp = 1 ;
float ampInc = 0.01;
//float red = 0;
//float green = 0;
//float blue = 0;
float start = 0;
float amount = (float)0.5;
float smooth;
boolean animate = false;
boolean leftTurn = false;
boolean rightTurn = false;
boolean upTurn = false;
boolean downTurn = false;
boolean leftTumble = false;
boolean rightTumble = false;
boolean smoothBool = true;
boolean playing = false;
boolean showMenu;
boolean showTitle;
boolean songTime = false;
boolean shuffle = false;
boolean videoBool = false;
boolean songBool = false;
PImage img;
PImage forest;
PImage flag;
PImage starWars;

int inputDriver;
Timer timer;


File theFile;

void setup() {

  //fullScreen(P3D);
  //surface.setResizable(true);
  size(1600, 900,P3D);
  //frameRate(30);

  w = 800;
  h = 600;

noteArray = new float [w/(3)][h/(3)];
colorArray = new float [w/(3)][h/(3)];
pyramidArray = new float [w/(3)][h/(3)];
flagArray = new float [w/(3)][h/(3)];
cubeArray = new float [w/(3)][h/(3)];
cubeArray1 = new float [w/(3)][h/(3)];
rayoArray = new float [w/(3)][h/(3)];
laFoto  = new float  [w/(3)][h/(3)];
  
  drop = new SDrop(this);

  minim = new Minim(this);


  input = minim.getLineIn(2);
  output = minim.getLineOut();
  fft = new FFT(input.bufferSize(), input.sampleRate());
  fft = new FFT(output.bufferSize(), input.sampleRate());

  //mixerInfo = AudioSystem.getMixerInfo();
  //for(int i = 0; i < mixerInfo.length; i++)
  //{println(i + " = " + mixerInfo[i].getName());} 
  //AudioStream inputStream = minim.getInputStream( output.getFormat().getChannels(), 
  //                                                output.bufferSize(), 
  //                                                output.sampleRate(), 
  //                                                output.getFormat().getSampleSizeInBits());
  //liveIn = new LiveInput( inputStream );
  //GranulateSteady grain = new GranulateSteady();
  //liveIn.patch(grain).patch(output);

  ps1 = new ParticleSystem1();

  //video = new Capture(this, width, height);

  flag = loadImage("american-flag.jpg");
  forest = loadImage("forest.jpg");
  img = loadImage("mountains-forest.jpg");
  starWars = loadImage("StarWars.jpg");


  flag.resize(w/3, h/3);
  forest.resize(w/3, h/3);
  img.resize(w/3, h/3);
  starWars.resize(width, height);


  starWarsTheme = minim.loadFile("Star Wars INTRO.mp3", 1024);
  song = starWarsTheme;
  title = "Star Wars";

  //fft = new FFT(input.bufferSize(), input.sampleRate());

  //fft = new FFT(song10.bufferSize(), song10.sampleRate());
  fft = new FFT(song.bufferSize(), song.sampleRate());

  loadPreferences();  

  //songSlot = 10;
  //songInc = width/songSlot;
  cols = w / Scale;
  //colsPan = cols;
  //spikex = 8;
  areax = cols/spikex;
  areaxPan = areax;

  rows = h / Scale;
  //rowsPan = rows;
  //spikey = 8;
  areay = rows/spikey;
  areayPan =areay;

  terrain = new float[cols][rows];
  flatterrain = new float[cols][rows];
  colorterrain = new float[cols][rows];
  flagterrain = new float[cols][rows];

  String[] lines = loadStrings("myText.txt");
  myText = join(lines, " ");
  // scrollY = height*0.1;
  //song.setGain(0); 
  scrollY = height*0.15;
  if (intro) {
  playStop = true;
  backupTheme = 1;
    //starWarsTheme.play();
    theme = 9;
  } 
  else
  {
    song = minim.loadFile("6. the tower.wav", 1024);
    title = "6. the tower";
  }

  loadMyPlayList();
  //  songSlot 
  freqA = new float[fft.specSize()];
  freqB = new float[fft.specSize()];

  //println(nf(playListCount,2,0));
}


void draw() {
  starWars.resize(width, height);
  if (theme == 9) {
    background(starWars);
  } else
    //    if (video.available()) {
    //      video.read();
    //      image(video, 0, 0);
    //background(video);
    //    }
    //    else
  {
    background(0);//red,green,blue);
  }

  //if (video.available()) {
  //video.read();
  //image(video,0,0);
  //}
  //stroke(255);
  //textSize(32);
  //  text(frameRate,50,50);
  //input = minim.getLineIn(inputDriver);
  //output = minim.getLineOut(outputDriver);
  fft.forward(input.mix);
  fft.forward(output.mix);



  //if ((millis()-9000) < 0) {
  //  textSize(height*0.024);
  //  textAlign(CENTER);
  //  fill(255); 
  //  if (intro) {
  //    text("Press F1 to STOP the Intro", width*0.5, height*0.07);
  //  } else if (!intro) {
  //    text("Press F1 to PLAY the Intro", width*0.5, height*0.07);
  //  }
  //}
  
  //myPlayList();
  if (song == null) {
  } else {
    fft.forward(song.mix);
  }

  songInc = width/songSlot;

  mouseOver();

  if (showMenu) {
    int bajo = 0;
    int medio = 120;
    int alto = 100;

    for (int i = 0; i < songSlot+1; i++) {   //shows songs menu
      stroke(0);
      if (song.isPlaying()) {
      r = 200;
      g = 0;
      b = 0;
      } else 
      {
      r = 0;
      g = 200;
      b = 0;
      }
      fill(bajo, medio, alto);

      if (i == songIndex) {
        fill(r, g, b);
        //rect((width/songSlot)*(songCount), 0, width/songSlot, height*0.032);
      } else if (i == songCount) {
        fill(bajo+50, medio+50, alto+50);
      }
      rect((width/songSlot)*(i), 0, width/songSlot, height*0.032);
      //tunePlaying = true;
      //      text(i, (width/songSlot)*(i-1), height/30);

      fill(255, 255, 100);
      textSize(height*0.016);
      textAlign(CENTER, CENTER);
      //if (i == 20) {text("PList...",((width/20)*19+5),15);}
      //  else {
      text(i, ((width/songSlot)*(i-1))+width/(songSlot*2), height*0.016); //}
    }
  }

  // ************progress bar
  if (song  == null) {
  } else {
    posx  = map(song .position(), 0, song .length(), 0, width);
  }

  if (songTime) {

    fill(0, 0, 90, 255);
    noStroke();
    rect(0, height*0.985, width, height);
    // shows the song playing position
    fill(0, 125, 0);
    rect(0, height*0.985, posx, height);

    textSize(height*0.018);
  }

  if (song == null) {
  } else
    if (song.isPlaying()) {
      if (songTime) {
        fill(255, 255, 100);
        textAlign(CENTER);
        text(title, width*0.5, height);
        textAlign(RIGHT);
        text(nf((((song.length()-song.position())/1000)/60), 2, 0)
          +":"+nf((((song.length()-song.position())/1000)%60), 2, 0), 
          width, height);
        textAlign(LEFT);
        text(nf(((song.position()/1000)/60), 2, 0)+
          ":"+nf(((song.position()/1000)%60), 2, 0), 
          0, height);
      }
    } else
      if (song.position() > (song.length())*0.97) {
        song.pause();
        song.rewind();
        if (shuffle) {
          //songIndex = floor(random(songSlot));

          shuffleCountDown++;
          shuffleArray[songIndex] = true;
          //println(shuffleArray);
          //println(shuffleCountDown);
          //println();
          while (shuffleArray[songIndex]) {

            if (shuffleCountDown == songSlot) {
              shuffleCountDown = 0;
              for (int n = 0; n < songSlot; n++) {
                shuffleArray[n] = false;
              }
              //songIndex = floor(random(songSlot));
            }
            songIndex = floor(random(songSlot));
            //println("oops!");
          }
        } else
        {
          songIndex++;
        }

        if (myPlayList[songIndex] == null) {
          if (playListSet) {
            loadMyPlayList();
            songIndex = 0;
            //song.play();
            if (myPlayList[songIndex] == null ) {
              playListCount = 1;
            } else
            {
              playListCount++;
            }
          }
          songIndex = 0;
          title = myTitles[songIndex];
          //myPlayList[songIndex] = minim.loadFile(mySongFiles[songIndex].getAbsolutePath(), 1024);
          song = myPlayList[songIndex];
          theme = songIndex+1;
          if (songIndex > 10) {
            theme = int(random(1, 11));
          }
          if (theme == 3) {
            xBackup = xRotate;
            xRotate = 2;
            vol = 2;
          } else {
            xRotate = xBackup; 
            zRotate = zBackup; 
            zLevel = zLevelBackup;
            vol = 1;
          }
          song.play();
        } else 
        {
          title = myTitles[songIndex];
          //myPlayList[songIndex] = minim.loadFile(mySongFiles[songIndex].getAbsolutePath(), 1024);
          song = myPlayList[songIndex];
          song.rewind();
          theme = songIndex+1;
          if (songIndex > 10) {
            theme = int(random(1, 10));
          }
          if (theme == 3) {
            xBackup = xRotate;
            xRotate = 2;
            vol = 2;
          } else {
            xRotate = xBackup; 
            zRotate = zBackup; 
            zLevel = zLevelBackup;
            vol = 1;
          }
          song.play();
        }
      }

  if (playStop) {
    song.play();
  } else
    if (!playStop) {
      if (song.isPlaying()) {
        song.pause();
        song.rewind();
      }
    }


  AudioAnalizer();

  pushMatrix();
  translate(width/2, height/2);

  if (leftTurn) {
    zRotate += 0.01;
  }
  if (rightTurn) {
    zRotate -= 0.01;
  }
  if (upTurn) {
    xRotate -= 0.01;
    particleY -= 0.1;
  }
  if (downTurn) {
    xRotate += 0.01;
    particleY -= 0.1;
  }
  if (leftTumble) {
    yRotate -= 0.01;
    //if (yRotate < 0 && yRotate > -PI/2) {
    //particleX -= 0.1;
    //}
  }
  if (rightTumble) {
    yRotate += 0.01;
    //if (yRotate > 0 && yRotate < PI/2) {
    //particleX += 0.1;
    //}
  }
    //println(yRotate);


  //keyPressed();  
  rotateX(xRotate);
  rotateZ(zRotate);
  rotateY(yRotate);

  //println(yRotate);


  float xVal = 0;
  float yVal = 0;
  if (theme == 7) {
    yVal = 0.025; 
    xVal =0.01; 
    flying -= 0.1;
  } else {
    yVal = 0.04; 
    xVal = 0.03; 
    if (!backFWD) {
      flying += 0.05;
      if (!toggleTxt) {
      } else {
        scrollY += height*0.003;
      }
    } else if (backFWD) {
      flying -= 0.05;
      if (!toggleTxt) {
      } else {
        scrollY -= height*0.003;
      }
    }
  }
  /****************************************************************************************/
  /******************************************************************************************/
  float yOff =flying;                // generates terrain
  //println(vol);
  for (int y = 0; y < rows; y++) {
    float xOff =0.01;
    for (int x = 0; x < cols; x++) {

      terrain[x][y] = map(noise(xOff, yOff), 0, 1, -depth1, depth2);   
      flatterrain[x][y] = map(noise(xOff, yOff), 0, 1, 0, 0);   
      colorterrain[x][y] = map(noise(xOff, yOff), 0, 1, -20, 20);   
      flagterrain[x][y] = map(noise(xOff, yOff), 0, 1, -depth1, depth2);  
      laFoto[x][y] = map(noise(xOff, yOff), 0, 1, -depth1, depth2);  

      xOff += xVal;
    }
    yOff += yVal;
  }

  translate(-w/xPan, -h/zoom, -zLevel);

  int yDot = 0;
  //loadPixels();
  for (int y = 0; y < rows-1; y++) {
    beginShape(TRIANGLE_STRIP);
    int xDot =0;
    for (int x = 0; x < cols; x++) {
      //img.loadPixels();
      noFill();



      if (theme == 1) {
        strkR =  (colorterrain[x][y]  +(noteArray[x][y]*2));// - noteArray[x][y]);
        strkG = (colorterrain[x][y]*8)+100-(noteArray[x][y])/2;// - noteArray[x][y]);
        strkB = -(colorterrain[x][y]*8)+30 - (noteArray[x][y]/2);// + noteArray[x][y]);// - noteArray[x][y]);
      }

      //if (theme == 7 || theme ==8 || theme == 9) {
      //  if (x > (((areax*1.25)*(xDot/16))-2)) {
      //    strkR=175;
      //    strkG=0;
      //    strkB=0;
      //    xDot++;
      //  } else {
      //    strkR = 255;// - (cubeArray2[x][y]*4);// - noteArray[x][y]);
      //    strkG = 255;// - (cubeArray2[x][y]*4);// - noteArray[x][y]);
      //    strkB = 255;// + (cubeArray2[x][y]*8);// + noteArray[x][y]);// - noteArray[x][y]);
      //  }
      //  //}    

      //  //littleStars(y,x);
      //}

      if (theme == 8) {
        strkR = (colorterrain[x][y] + noteArray[x][y]);// - noteArray[x][y]);
        strkG = (colorterrain[x][y]+20 + noteArray[x][y]);// - noteArray[x][y]);
        strkB = (colorterrain[x][y]+20 + noteArray[x][y]);// + noteArray[x][y]);// - noteArray[x][y]);
          //tint(strkR,strkG,strkB);
      }

      if (theme == 2) {
        //xRotate = xBackup;
        //vol = 1;
        strkR = (colorterrain[x][y] +(noteArray[x][y])*4);// - noteArray[x][y]);
        strkG = (colorterrain[x][y]+25 +(noteArray[x][y]*20));// - noteArray[x][y]);
        strkB = ((colorterrain[x][y]+100) +(noteArray[x][y]*5));// + noteArray[x][y]);// - noteArray[x][y]);
      }
      if (theme == 4) {
        strkR = 100 +(colorArray[x][y]*8);// - noteArray[x][y]);
        strkG = 120+(colorArray[x][y])*4;// - noteArray[x][y]);
        strkB = 50 - (colorArray[x][y]);// + noteArray[x][y]);// - noteArray[x][y]);
      }
      if (theme == 5) {
        strkR =  0 +(colorArray[x][y]*20);// - noteArray[x][y]);
        strkG = 0 +(colorArray[x][y])*12;// - noteArray[x][y]);
        strkB = 0 + (colorArray[x][y]*20);// + noteArray[x][y]);// - noteArray[x][y]);
      }
      if (theme == 3) {
        strkR =  (colorterrain[x][y] +(noteArray[x][y])*10);// - noteArray[x][y]);
        strkG = (colorterrain[x][y] +(noteArray[x][y]*10));// - noteArray[x][y]);
        strkB =  ((colorterrain[x][y]+10) +(noteArray[x][y]*10));// + noteArray[x][y]);// - noteArray[x][y]);
      }
      if (theme == 6) {
        if ((y < (rows) && x >= (areax*xDot)-2) || (x < cols && y == ((areay)*yDot))) {// || (y == 0) || (y == areay*(1/12)) || (y == areay*(2/12)) || (y == areay*(3/12)) || (y == areay*4) || (y == areay*yDot) || (y == areay*yDot) || (y == areay*yDot) || (y == areay*5)|| (y == areay*6)|| (y == areay*7)|| (y == areay*8)|| (y == areay*9)|| (y == areay*10)|| (y == areay*11)|| (y == areay*12)|| (y == height-2)) {
          strkR=100;
          strkG=200;
          strkB=255; 
          xDot++;
          if (x >= cols-1) {
            yDot++;
          }
        } else {
          strkR =  0  +(colorArray[x][y]*16);// - noteArray[x][y]);
          strkG =  0 + (colorArray[x][y]*4);// - noteArray[x][y]);
          strkB = 20 + (colorArray[x][y]*2);// + noteArray[x][y]);// - noteArray[x][y]);
        }
      }

      if (theme == 7) {
        //littleStars(y, x);
          int loc = (x+y*(w/3));
  
          strkR = red(flag.pixels[loc]);
          strkG = green(flag.pixels[loc]);
          strkB = blue(flag.pixels[loc]);
          //pixels[loc] = color(strkR,strkG,strkB);
     }

      if (theme == 10) {
          int loc = (x+y*(w/3));
          strkR = red(img.pixels[loc]);
          strkG = green(img.pixels[loc]);
          strkB = blue(img.pixels[loc]);
      }

      stroke(strkR, strkG, strkB);

      if (theme == 1) {      
        //noStroke();
        fill(strkR, strkG, strkB);
        vertex(x*Scale, y*Scale, (colorterrain[x][y])*2 + noteArray[x][y]); 
        vertex(x*Scale, (y+1)*Scale, colorterrain[x][y+1]*2 + noteArray[x][y+1]);
      }
      if (theme == 6) {

        vertex(x*Scale, y*Scale, (flatterrain[x][y]) + cubeArray[x][y]); 
        vertex(x*Scale, (y+1)*Scale, flatterrain[x][y+1] + cubeArray[x][y+1]);
      }
      if (theme == 7) {
        //fill(strkR, strkG, strkB);
        vertex(x*Scale, y*Scale, (colorterrain[x][y]) + flagArray[x][y]); 
        vertex(x*Scale, (y+1)*Scale, colorterrain[x][y+1] + flagArray[x][y+1]);
      }
      if (theme == 8) {
        noStroke();
        //fill(strkR, strkG, strkB, 100);
        vertex(x*Scale, y*Scale, (flatterrain[x][y])); 
        vertex(x*Scale, (y+1)*Scale, flatterrain[x][y+1]);
      }
      if (theme == 2) {
        fill(strkR, strkG, strkB);
        vertex(x*Scale, y*Scale, (colorterrain[x][y]) + noteArray[x][y]); 
        vertex(x*Scale, (y+1)*Scale, colorterrain[x][y+1] + noteArray[x][y+1]);
      }
      if (theme == 4) {
        fill(strkR, strkG, strkB);
        vertex(x*Scale, y*Scale, (terrain[x][y]) + pyramidArray[x][y]); 
        vertex(x*Scale, (y+1)*Scale, terrain[x][y+1]*2 + pyramidArray[x][y+1]);
      }
      if (theme == 5) {
        vertex(x*Scale, y*Scale, (flatterrain[x][y]) + cubeArray1[x][y]); 
        vertex(x*Scale, (y+1)*Scale, flatterrain[x][y+1]*2 + (cubeArray1[x][y+1]));
      }
      if (theme == 3) {
        vertex(x*Scale, y*Scale, (terrain[x][y])*2 - (rayoArray[x][y]/2)); 
        vertex(x*Scale, (y+1)*Scale, terrain[x][y+1]*2 - (rayoArray[x][y+1]/2));
      }

      if (theme == 10) {      
        fill(strkR, strkG, strkB);
        vertex(x*Scale, y*Scale, (colorterrain[x][y])*2 + noteArray[x][y]); 
        vertex(x*Scale, (y+1)*Scale, colorterrain[x][y+1]*2 + noteArray[x][y+1]);
      }
    }
    endShape();
  }
  if (theme == 9) {
    starWars();
  }

  if (theme == 8) {
    ps1.runCircles();
    ps1.run();
    fill(255);
  }

  popMatrix();

  if (errorBoolList) {
    rectMode(CENTER);
    stroke(255);
    fill(0, 0, 255);
    rect(width*0.5, height*0.5, width, height*0.05);
    fill(255, 255, 0);
    textSize(24);
    textAlign(CENTER, CENTER);
    text("The file  'MyPlayList.mpl'", width*0.5, height*0.485);
    text("Is missing or corrupted", width*0.5, height*0.51);
    rectMode(CORNER);
  }

  if (errorBoolSong) {
    rectMode(CENTER);
    stroke(255);
    fill(0, 0, 255);
    rect(width*0.5, height*0.5, width, height*0.05);
    fill(255, 255, 0);
    textSize(24);
    textAlign(CENTER, CENTER);
    text("Not a music file type", width*0.5, height*0.485);
    text("Or file is corrupted", width*0.5, height*0.51);
    rectMode(CORNER);
  }

  if (errorBoolFile) {
    rectMode(CENTER);
    stroke(255);
    fill(0, 0, 255);
    rect(width*0.5, height*0.5, width, height*0.05);
    fill(255, 255, 0);
    textSize(24);
    textAlign(CENTER, CENTER);
    text("The file: "+theFile.getName(), width*0.5, height*0.485);
    text("Can't be read as PlayList", width*0.5, height*0.51);
    rectMode(CORNER);
  }
  
  if (songBool) {
    rectMode(CENTER);
    stroke(255);
    fill(0, 0, 255);
    rect(width*0.5, height*0.5, width, height*0.05);
    fill(255, 255, 0);
    textSize(24);
    textAlign(CENTER, CENTER);
    text("The file: "+myTitles[songCount], width*0.5, height*0.485);
    text("Is missing or corrupted", width*0.5, height*0.51);
    rectMode(CORNER);
  }
}

void AudioAnalizer() {      
  amp = 5;
  //float amp1 =1;
  int freq = 0;

  for (int iy = 0; iy < rows-areay; iy += rows/spikey) {
    for (int ix = 0; ix < cols; ix += cols/spikex) {
      if (theme == 8) {
        fft.getBand(freq);
        ps1.addParticle1(ix, iy, freq, amp);
        ps1.addCircles(ix, iy, freq, amp);
        freq += 1;
        amp += ampInc;
      } else {
        freqA[freq] = lerp(freqB[freq], freqA[freq], (float)amount);
        float yoff = 0.1; //noteArray [((note.pitch()%12)*ScaleInc)][((note.pitch()/12)*ScaleInc)];
        float fy = 0.1;
        float fy2 = 0.9;
        for (int y = iy; y < (iy+areay); y++) {
          //int incX = freq;
          float xoff = 0.1; //noteArray [((note.pitch()%12)*ScaleInc)][((note.pitch()/12)*ScaleInc)];
          float fx = 0.1;
          float fx2 = 0.9;
          for (int x = ix; x < (ix+areax); x++) {
            if (!smoothBool) {
              noteArray[x][y] = map(noise(xoff, yoff), 0, 1, 0, (fft.getBand(freq)*(fx)*(fy))*amp*vol);
              colorArray[x][y] = map(noise(xoff, yoff), 0, 1, 0, ((fft.getBand(freq))*fx*fy*(amp)))*(vol);
              cubeArray[x][y] = ((freqA[freq])*(amp))*vol;  // third vertex arrays
              cubeArray1[x][y] = ((freqA[freq])*(amp))*(fx)*(fy)*fx*fy*fx*fy*fx*fy*(vol);
              rayoArray[x][y] = map(noise(xoff, yoff), 0, 1, 0, (fft.getBand(freq)*(fx)*(fy)*fx*fy*fx*fy)*amp*vol);
              pyramidArray[x][y] = fft.getBand(freq)*amp*(fx)*(fy)*vol;
              flagArray[x][y] = fft.getBand(freq)*amp*fx2*fy2*vol;
            } else 
            if (smoothBool) {
              noteArray[x][y] = map(noise(xoff, yoff), 0, 1, 0, (freqA[freq]*(fx)*(fy))*amp*(vol*1.5));
              colorArray[x][y] = map(noise(xoff, yoff), 0, 1, 0, (freqA[freq]*fx*fy*(amp)))*(vol);
              cubeArray[x][y] = (freqA[freq]*(amp))*vol;  // third vertex arrays
              cubeArray1[x][y] = ((freqA[freq])*(amp))*(fx)*(fy)*fx*fy*fx*fy*fx*fy*(vol*0.25);
              rayoArray[x][y] = map(noise(xoff, yoff), 0, 1, 0, (freqA[freq]*(fx)*(fy)*fx*fy*fx*fy)*amp*vol);
              pyramidArray[x][y] = freqA[freq]*amp*(fx)*(fy)*(vol*0.5);
              flagArray[x][y] = freqA[freq]*amp*fx2*fy2*(vol*1.5);
            }
            xoff += passXoff;
            if  (x < (ix)+(areax/2)) {
              fx += 0.1;
            } else if (x >= (ix)+(areax/2)) {
              fx -= 0.1;
            }
            if  (x < (ix)+(areax/2)) {
              fx2 += 0.02;
            } else if (x >= (ix)+(areax/2)) {
              fx2 -= 0.02;
            }
          }
          if  (y < (iy)+(areay/2)) {
            fy += 0.1;
          } else if (y > (iy)+(areay/2)) {
            fy -= 0.1;
          }
          if  (y < (iy)+(areay/2)) {
            fy2 += 0.02;
          } else if (y > (iy)+(areay/2)) {
            fy2 -= 0.02;
          }
          yoff += passYoff;
        }
        freq += 1;
        amp += ampInc;
        freqB[freq] = fft.getBand(freq);
        //println(freq);
      }
    }
  }
}


void mouseDragged() {
  // turns the Z's
  if (pmouseX > mouseX && mouseY >= height/30 && mouseY<=height-30) {
    zBackup = zRotate += 0.01;
  }
  if (pmouseX < mouseX && mouseY >= height/30 && mouseY<=height-30) {
    zBackup = zRotate -= 0.01;
  }
  //turns de X's
  if (pmouseY > mouseY && mouseY >= height/30 && mouseY<=height-30) {
    xBackup = xRotate += 0.01;
  }
  if (pmouseY < mouseY && mouseY >= height/30 && mouseY<=height-30) {
    xBackup =  xRotate -= 0.01;
  }
}

void mouseWheel(MouseEvent event) {  //zoom in zoom out
  float wheel = event.getCount();
  if (wheel > 0) {
    zoom = zoom + 1;
  }
  if (wheel < 0) {
    zoom = zoom - 1;
  }
}
