void animation_torique(int i, int j) {
  cells=0;
  for (int loop=1; loop<=5; loop++) {
    nbcells[loop]=0;
  }
  for (int ii=-1; ii<2; ii++) {
    int a=i+ii;
    if (a<0) {
      a=taille-1;
    } else if (a>=taille) {
      a=0;
    }
    for (int jj=-1; jj<2; jj++) {
      int b=j+jj;
      if (b<0) {
        b=taille-1;
      } else if (b>=taille) {
        b=0;
      }
      if (ii!=0 || jj!=0) {
        if (ii>=-1 && ii<=1 && jj>=-1 && jj<=1) {
          cells++;
          for (int loop=1; loop<=5; loop++) {
            if (grid[a][b]==cellscolor[loop][0]) {
              nbcells[loop]++;
            }
          }
        } else {
          cellsr2++;
          for (int loop=1; loop<=5; loop++) {
            if (grid[a][b]==cellscolor[loop][0]) {
              nbcellsr2[loop]++;
            }
          }
        }
      }
    }
  }
}






void animation(int i, int j) {
  cells=0;
  for (int loop=1; loop<=5; loop++) {
    nbcells[loop]=0;
  }
  for (int ii=-2; ii<3; ii++) {
    for (int jj=-2; jj<3; jj++) {
      if (i+ii>=0 && i+ii<taille && j+jj>=0 && j+jj<taille) {
        if (ii!=0 || jj!=0) {
          if (ii>=-1 && ii<=1 && jj>=-1 && jj<=1) {
            cells++;
            for (int loop=1; loop<=5; loop++) {
              if (grid[i+ii][j+jj]==cellscolor[loop][0]) {
                nbcells[loop]++;
              }
            }
          } else {
            cells++;
            for (int loop=1; loop<=5; loop++) {
              if (grid[i+ii][j+jj]==cellscolor[loop][0]) {
                nbcellsr2[loop]++;
              }
            }
          }
        }
      }
    }
  }
}


void rules (int i, int j) {
  if (rules==1) {
    rulesbase(i, j);
  } else if (rules==2) {
    rulesEcosystem(i, j);
  } else if (rules==3) {
    rules_zone(i, j);
  } else if (rules==4) {
    rules_domination(i, j);
  } else if (rules==5) {
    rules_chasing(i, j);
  } else if (rules == 6) {
    rules_forest(i, j);
  }
}

void init (int i, int j) {
  if (rules==1) {
    initbase(i, j);
  } else if (rules==2) {
    initecosystem(i, j);
  } else if (rules==3) {
    init_zone(i, j);
  } else if (rules==4) {
    init_domination(i, j);
  } else if (rules==5) {
    init_chasing(i, j);
  } else if (rules==6) {
    init_forest(i, j);
  }
}

void clic() {
  if (rules==1) {
    clicbase();
  } else if (rules==2) {
    clicecosystem();
  } else if (rules==3) {
    clic_zone();
  } else if (rules==4) {
    clic_domination();
  } else if (rules==5) {
    clic_chasing();
  } else if (rules==6) {
    clic_forest();
  }
}



void clear(int i, int j) {
  ngrid[i][j]=0;
  if (rules==2){
    clearecosystem(i, j);
  }
}

void ATH() {
  line(233, 700, 233, 900);
  line(467, 700, 467, 900);
  line(0, 800, 700, 800);
  line(0, 700, 700, 700);
  textSize(40);
  fill(0);
  text("Play", 313, 770);
  text("Random", 45, 770);
  text("Clear", 532, 770);
  text("FPS", 90, 843);
  text("Step", 313, 865);
  text("Menu", 532, 865);
  Curseur CurseurFPS = new Curseur(curseurYFPS, milieuFPS, curseurXFPS, black);
  curseurFPS=curseurXFPS-milieuFPS+75;
}


class Curseur {
  Curseur(int curseurY, int milieu, int curseurX, int[] couleur) {
    fill(255, 255, 255);
    ellipse(milieu, curseurY, 150, 10); 
    fill(couleur[1], couleur[2], couleur[3]);
    ellipse(curseurX, curseurY, 20, 20);
    fill(0);
  }
}
