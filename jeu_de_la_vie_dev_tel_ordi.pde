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
    //println("wanted FPS = "+FPS);
    //println("real FPS = "+frame);
  }
  if (menu) {
    menu();
  } else if (color_menu) {
    color_menu();
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

        if (ngrid[i][j] == green[0]) {
          fill(green[1],green[2],green[3]);
        } else if (ngrid[i][j]==light_green[0]) {
          fill(light_green[1],light_green[2],light_green[3]);
        } else if (ngrid[i][j] == red[0]) {
          fill(red[1],red[2],red[3]);
        } else if (ngrid[i][j]==blue[0]) {
          fill(blue[1],blue[2],blue[3]);
        } else if (ngrid[i][j]==light_blue[0]) {
          fill(light_blue[1],light_blue[2],light_blue[3]);
        } else if (ngrid[i][j]==black[0]) {
          fill(black[1],black[2],black[3]);
        } else if (ngrid[i][j]==yellow[0]) {
          fill(yellow[1],yellow[2],yellow[3]);
        } else if (ngrid[i][j]==orange[0]) {
          fill(orange[1],orange[2],orange[3]);
        } else if (ngrid[i][j]==brown[0]) {
          fill(brown[1],brown[2],brown[3]);
        } else if (ngrid[i][j]==purple[0]) {
          fill(purple[1],purple[2],purple[3]);
        } else {
          fill(white[1],white[2],white[3]);
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
