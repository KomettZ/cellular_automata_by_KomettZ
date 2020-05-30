void animation_torique(int i, int j) {
  cells=0;
  nbcellsc1=0;
  nbcellsc2=0;
  nbcellsc3=0;
  nbcellsc4=0;
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
          if (grid[a][b]==color1) {
            nbcellsc1++;
          } else if (grid[a][b]==color2) {
            nbcellsc2++;
          } else if (grid[a][b]==color3) {
            nbcellsc3++;
          } else if (grid[a][b]==color4) {
            nbcellsc4++;
          }
        } else {
          cellsr2++;
          if (grid[i+ii][j+jj]==color1) {
            nbcellsc1r2++;
          } else if (grid[i+ii][j+jj]==color2) {
            nbcellsc2r2++;
          } else if (grid[i+ii][j+jj]==color3) {
            nbcellsc3r2++;
          } else if (grid[i+ii][j+jj]==color4) {
            nbcellsc4r2++;
          }
        }
      }
    }
  }
}






void animation(int i, int j) {
  cells=0;
  nbcellsc1=0;
  nbcellsc2=0;
  nbcellsc3=0;
  nbcellsc4=0;
  for (int ii=-2; ii<3; ii++) {
    for (int jj=-2; jj<3; jj++) {
      if (i+ii>=0 && i+ii<taille && j+jj>=0 && j+jj<taille) {
        if (ii!=0 || jj!=0) {
          if (ii>=-1 && ii<=1 && jj>=-1 && jj<=1) {
            cells++;
            if (grid[i+ii][j+jj]==color1) {
              nbcellsc1++;
            } else if (grid[i+ii][j+jj]==color2) {
              nbcellsc2++;
            } else if (grid[i+ii][j+jj]==color3) {
              nbcellsc3++;
            } else if (grid[i+ii][j+jj]==color4) {
              nbcellsc4++;
            }
          } else {
            cellsr2++;
            if (grid[i+ii][j+jj]==color1) {
              nbcellsc1r2++;
            } else if (grid[i+ii][j+jj]==color2) {
              nbcellsc2r2++;
            } else if (grid[i+ii][j+jj]==color3) {
              nbcellsc3r2++;
            } else if (grid[i+ii][j+jj]==color4) {
              nbcellsc4r2++;
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
    rulesecosystem(i, j);
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
  Curseur CurseurFPS = new Curseur(870, 116, curseurXFPS);
  curseurFPS=curseurXFPS-milieuFPS+75;
}


class Curseur{
  Curseur(int curseurY, int milieu, int curseurX){
  fill(255);
  ellipse(milieu, 870, 150, 10);
  fill(250, 0, 0);
  ellipse(curseurX, curseurY, 20, 20);
  }
}
