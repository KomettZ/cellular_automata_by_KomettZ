void setup() {
  size(700, 900);
}

void draw() {
  background(85, 103, 188);
  IPS=curseur/5;
  if (IPS>0) {
    frameRate(IPS);
  }
  x = 0;
  y = 0;
  println(frameCount);
  if (ATH) {
    ATH();
  }
  for (int i=0; i<taille; i++) {
    for (int j=0; j<taille; j++ ) {
      if (random == true) {
        init(i, j);
      }
      if (play == true) {
        animation(i, j);
      }
      if (clear == true) {
        clear(i,j);
      }
      if (ngrid[i][j] == green) {
        fill(0, 250, 0);
      } else if (ngrid[i][j] == red) {
        fill(250, 0, 0);
      } else if (ngrid[i][j]==blue){
        fill(0,0,250);
      } else if (ngrid[i][j]==black){
        fill(0);
      } else if (ngrid[i][j]==yellow){
        fill(250,250,0);
      } else if (ngrid[i][j]==orange){
        fill(240,160,0);
      } else {
        fill(255);
      }
      rect(x, y, w, w);
      x=x+w;
    }
    y=y+w;
    x=0;
  }
  if (random==true) {
    random=false;
  }
  if (clear==true) {
    clear=false;
  }
  for (int i=0; i<taille; i++) {
    for (int j=0; j<taille; j++ ) {
      grid[i][j]=ngrid[i][j];
    }
  }
}
