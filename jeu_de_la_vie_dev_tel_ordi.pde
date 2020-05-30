void setup() {
  size(700, 900);
}

void draw() {
  background(85, 103, 188);
  FPS=curseurFPS/5;
  if (FPS>0) {
    frameRate(FPS);
  }
  s=millis();
  if (s/1000>lastsecond+1) {
    lastsecond++;
    frame=frameCount-lastframe;
    lastframe=frameCount;
  }
  if (lastsecond>0) {
    println("wanted FPS = "+FPS);
    println("real FPS = "+frame);
  }
  if (menu) {
    menu();
  } else {
    x = 0;
    y = 0;
    if (ATH) {
      ATH();
    }
    if (step) {
      play=true;
    }
    for (int i=0; i<taille; i++) {
      for (int j=0; j<taille; j++ ) {
        if (play == true) {
          if (tore) {
            animation_torique(i, j);
          } else {
            animation(i, j);
          }
          rules(i, j);
        }
        if (random == true) {
          init(i, j);
        }
        if (clear == true) {
          clear(i, j);
        }

        if (ngrid[i][j] == green) {
          fill(0, 128, 0);
        }else if (ngrid[i][j]==light_green){
          fill(0,255,0);
        } else if (ngrid[i][j] == red) {
          fill(255, 0, 0);
        } else if (ngrid[i][j]==mazarine) {
          fill(0, 0, 255);
        }else if (ngrid[i][j]==light_blue){
          fill(0,255,255);
        } else if (ngrid[i][j]==black) {
          fill(0);
        } else if (ngrid[i][j]==yellow) {
          fill(255, 255, 0);
        } else if (ngrid[i][j]==orange) {
          fill(255, 125, 0);
        } else if (ngrid[i][j]==purple) {
          fill(255,0,255);
        } else {
          fill(255);
        }
        rect(x, y, w, w);
        x=x+w;
      }
      y=y+w;
      x=0;
    }
    if (random) {
      random=false;
    }
    if (clear) {
      clear=false;
    }
    if (step) {
      play=false;
      step=false;
    }
    for (int i=0; i<taille; i++) {
      for (int j=0; j<taille; j++ ) {
        grid[i][j]=ngrid[i][j];
      }
    }
  }
}
