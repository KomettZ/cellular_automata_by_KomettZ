//initrules = 1 : alive cells + grass + void
//initrules = 2 : alive cells + grass


float probasrdev=0.1;
float probasvdev=0.4;


void rulesdev (int i, int j) {
  nbcellulesv=nbcellulesv+nbcellulesb;
  if (grid[i][j]==color0) { //pour une cellule morte
    if (nbcellulesv>=3) {
      if (nbcellulesr==2) {
        ngrid[i][j]=color2;
      } else {
        if (nbcellulesr==0 && nbcellulesv>=4) {
          ngrid[i][j]=color1;
        }
      }
    }
  } else if (grid[i][j]==color1) { //pour une case d'herbe
    if (nbcellulesv==8) {
      ngrid[i][j]=color3;
    }
    if (nbcellulesr>=2) {
      ngrid[i][j]=0;
    }
  } else if (grid[i][j]==color3) {
    if (nbcellulesr>=2) {
      ngrid[i][j]=color1;
    }
  } else { //pour une cellule vivante
    if (nbcellulesr==1 && nbcellulesv>=2) {
      ngrid[i][j]=color2;
    } else if (nbcellulesv>0) {
      if (nbcellulesr==2 || nbcellulesr==3) {
        ngrid[i][j]=color2;
      } else {
        ngrid[i][j]=color1;
      }
    } else {
      ngrid[i][j]=color1;
    }
  }
} 

void initdev(int i, int j) {
  if (initrules==1) {
    initdev_color1_color0(i, j);
  } else {
    initdev_color1(i, j);
  }
}


void initdev_color1_color0(int i, int j) {
  float r = random(1);
  if (r <= probasrdev) {
    ngrid[i][j]=color2;
  } else if (r <= probasrdev+probasvdev) {
    ngrid[i][j]=color1;
  } else {
    ngrid[i][j]=0;
  }
}
void initdev_color1(int i, int j) {
  float r = random(1);
  if (r <= probasrdev) {
    ngrid[i][j]=color2;
  } else {
    ngrid[i][j]=color1;
  }
}

void clicdev () {
  if (grid[mouseY/w][mouseX/w] ==0) {
    ngrid[mouseY/w][mouseX/w] = 1;
    a=1;
  } else if (grid[mouseY/w][mouseX/w] ==1) {
    ngrid[mouseY/w][mouseX/w] = 2;
    a=2;
  } else {
    ngrid[mouseY/w][mouseX/w] = 0;
    a=0;
  }
}
