void stars(int xi, int yi) {
//if (theme == 7) {
translate(0,0,0);
noStroke();
fill(0,0,255,90);
rect(xi-23,yi+12,cols*2+10,(rows*2)+(areay+12));
//rect(xi,yi,xi+(cols/2),yi+(rows/2));
//rotateY(yRotate);
translate(0,0,20);
fill(255);
float yInc = 54;
float xInc = 85;
for (int y = yi-5; y < 0; y += yInc) { //-(rows*2)-3
  for (int x = xi-5; x < 360;x +=xInc){ //-(areax/3)+5
    triangle(x,y+55,x+(12),y+35,x+(25),y+55);
    triangle(x,y+42,x+(12),y+62,x+(25),y+42);
stroke(255);
}
}
for (int y = yi-3; y < -areay*2; y += yInc) {
  for (int x = xi; x < (cols/2)*3;x +=xInc){
    triangle(x+(xInc/2),(y+60)+(yInc/2),x+(areax*2)+5,(y+40)+(yInc/2),x+((areax*2)+areax/2)+5,(y+60)+(yInc/2));
    triangle(x+(xInc/2),(y+47)+(yInc/2),x+(areax*2)+5,(y+67)+(yInc/2),x+((areax*2)+areax/2)+5,(y+47)+(yInc/2));
}
}

//fill(0,0,150);
//rect(-areax+3,-rows/16*31,cols*2,(rows*2)+areay);
  noFill();

//colsPan=areaxPan=areayPan=rowsPan = int(noise(-1,1));

}

void littleStars(int y, int x) {
float xStart = (cols/2)-2;
float yStart = 3;
int areaX = areax - 2;
int areaY = areay-3;
int yinc=0;
int xinc=0;
  if (x > (cols/3)*1.39 && x < cols && y > -3 && y < (rows/3)*1.75) {
      strkR=0;
      strkG=0;
      strkB=90; 
      //}
    } 
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }

yinc++;
xinc=0;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }

yinc++;
xinc=0;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
yinc++;
xinc=0;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
yinc++;
xinc=0;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
yinc++;
xinc=0;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }

xStart = xStart+areaX/2;
yStart = yStart+areaY/2;
yinc=0;
xinc=0;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;

yinc++;
xinc=0;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;

yinc++;
xinc=0;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;

yinc++;
xinc=0;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }

yinc++;
xinc=0;

  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }
    xinc++;
  if (x > xStart+(areaX*xinc) && x < xStart+(areaX*xinc)+4 && y > yStart+(areaY*yinc) && y < yStart+(areaY*yinc)+4) {
    strkR=255;
    strkG=255;
    strkB=255; 
    }

}
