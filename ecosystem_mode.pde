//initrules = 1 : alive cells + grass + void
//initrules = 2 : alive cells + grass


int food=1;
//food = 1 : with food
//food = 2 : without food


float[] probasEcosystem = {0, 0.4, 0.03, 0, 0.03, 0.03};
float probasEcosystemLivingPop=1-probasEcosystem[1];

void rulesEcosystem(int i, int j) {
  if (food==1) {
    if (pop==1) {
      rulesEcosystem_withFood_pop1(i, j);
    } else if (pop==2) {
      rulesEcosystem_withFood_pop2(i, j);
    } else {
      rulesEcosystem_withFood_pop3(i, j);
    }
  } else {
  }
}


void rulesEcosystem_withFood_pop1 (int i, int j) {
  nbcells[1]=nbcells[1]+nbcells[3];
  if (grid[i][j]==cellscolor[0][0]) {               //pour une cellule morte
    if (nbcells[1]>=3) {
      if (nbcells[2]==2) {
        ngrid[i][j]=cellscolor[2][0];
      } else {
        if (nbcells[2]==0 && nbcells[1]>=4) {
          ngrid[i][j]=cellscolor[1][0];
        }
      }
    }
  } else if (grid[i][j]==cellscolor[1][0]) {        //pour une case d'herbe
    if (nbcells[1]==8) {
      ngrid[i][j]=cellscolor[3][0];
    }
    if (nbcells[2]>=2) {
      ngrid[i][j]=cellscolor[0][0];
    }
  } else if (grid[i][j]==cellscolor[3][0]) {      //pour une cellule d'arbre
    if (nbcells[2]>=2) {
      ngrid[i][j]=cellscolor[1][0];
    }
  } else {                              //pour une cellule vivante
    if (nbcells[2]==1 && nbcells[1]>=2) {
      ngrid[i][j]=cellscolor[2][0];
    } else if (nbcells[1]>0) {
      if (nbcells[2]==2 || nbcells[2]==3) {
        ngrid[i][j]=cellscolor[2][0];
      } else {
        ngrid[i][j]=cellscolor[1][0];
      }
    } else {
      ngrid[i][j]=cellscolor[1][0];
    }
  }
} 

void rulesEcosystem_withFood_pop2(int i, int j) {
  nbcells[1]=nbcells[1]+nbcells[3];
  if (grid[i][j]==cellscolor[0][0]) {               //pour une cellule morte
    if (nbcells[1]>=3) {
      if (nbcells[2]+nbcells[4]==2) { //à voir
        if (nbcells[2]>nbcells[4]) {
          ngrid[i][j]=cellscolor[2][0];
        } else if (nbcells[2]<nbcells[4]) {
          ngrid[i][j]=cellscolor[4][0];
        } else {
          ngrid[i][j]=cellscolor[1][0];
        }
      } else {
        if (nbcells[2]+nbcells[4]==0 && nbcells[1]>=4) {
          ngrid[i][j]=cellscolor[1][0];
        }
      }
    }
  } else if (grid[i][j]==cellscolor[1][0]) {        //pour une case d'herbe
    if (nbcells[1]==8) {
      ngrid[i][j]=cellscolor[3][0];
    }
    if (nbcells[2]+nbcells[4]>=2) {
      ngrid[i][j]=cellscolor[0][0];
    }
  } else if (grid[i][j]==cellscolor[3][0]) {      //pour une cellule d'arbre
    if (nbcells[2]+nbcells[4]>=2) {
      ngrid[i][j]=cellscolor[1][0];
    }
  } else if (grid[i][j]==cellscolor[2][0]) {                              //pour une cellule vivante de la pop 1
    if (nbcells[2]>nbcells[4]) {
      if (nbcells[2]==1 && nbcells[1]+nbcells[4]>=2) {
        ngrid[i][j]=cellscolor[2][0];
      } else if (nbcells[1]+nbcells[4]>0) {
        if (nbcells[2]==2 || nbcells[2]==3) {
          ngrid[i][j]=cellscolor[2][0];
        } else {
          ngrid[i][j]=cellscolor[1][0];
        }
      } else {
        ngrid[i][j]=cellscolor[1][0];
      }
    } else {
      if (nbcells[2]==1 && nbcells[1]>=2) {
        ngrid[i][j]=cellscolor[2][0];
      } else if (nbcells[1]>0) {
        if (nbcells[2]==2 || nbcells[2]==3) {
          ngrid[i][j]=cellscolor[2][0];
        } else {
          ngrid[i][j]=cellscolor[1][0];
        }
      } else {
        ngrid[i][j]=cellscolor[1][0];
      }
    }
  } else {                                                       //pour une cellule de la pop 2
    if (nbcells[4]>nbcells[2]) {
      if (nbcells[4]==1 && nbcells[1]+nbcells[2]>=2) {
        ngrid[i][j]=cellscolor[4][0];
      } else if (nbcells[1]+nbcells[2]>0) {
        if (nbcells[4]==2 || nbcells[4]==3) {
          ngrid[i][j]=cellscolor[4][0];
        } else {
          ngrid[i][j]=cellscolor[1][0];
        }
      } else {
        ngrid[i][j]=cellscolor[1][0];
      }
    } else {
      if (nbcells[4]==1 && nbcells[1]>=2) {
        ngrid[i][j]=cellscolor[4][0];
      } else if (nbcells[1]>0) {
        if (nbcells[4]==2 || nbcells[4]==3) {
          ngrid[i][j]=cellscolor[4][0];
        } else {
          ngrid[i][j]=cellscolor[1][0];
        }
      } else {
        ngrid[i][j]=cellscolor[1][0];
      }
    }
  }
}

void rulesEcosystem_withFood_pop3(int i, int j) {
  nbcells[1]=nbcells[1]+nbcells[3];
  if (grid[i][j]==cellscolor[0][0]) {               //pour une cellule morte
    if (nbcells[1]>=3) {
      if (nbcells[2]+nbcells[4]+nbcells[5]==2) { //à voir
        if (nbcells[2]>nbcells[4]+nbcells[5]) {
          ngrid[i][j]=cellscolor[2][0];
        } else if (nbcells[4]>nbcells[2]+nbcells[5]) {
          ngrid[i][j]=cellscolor[4][0];
        } else if (nbcells[5]>nbcells[2]+nbcells[4]) {
          ngrid[i][j]=cellscolor[5][0];
        } else {
          ngrid[i][j]=cellscolor[1][0];
        }
      } else {
        if (nbcells[2]+nbcells[4]+nbcells[5]==0 && nbcells[1]>=4) {
          ngrid[i][j]=cellscolor[1][0];
        }
      }
    }
  } else if (grid[i][j]==cellscolor[1][0]) {        //pour une case d'herbe
    if (nbcells[1]==8) {
      ngrid[i][j]=cellscolor[3][0];
    }
    if (nbcells[2]+nbcells[4]+nbcells[5]>=2) {
      ngrid[i][j]=cellscolor[0][0];
    }
  } else if (grid[i][j]==cellscolor[3][0]) {      //pour une cellule d'arbre
    if (nbcells[2]+nbcells[4]+nbcells[5]>=2) {
      ngrid[i][j]=cellscolor[1][0];
    }
  } else if (grid[i][j]==cellscolor[2][0]) {                              //pour une cellule vivante de la pop 1
    if (nbcells[2]==1 && nbcells[1]>=2) {
      ngrid[i][j]=cellscolor[2][0];
    } else if (nbcells[1]>0) {
      if (nbcells[2]==2 || nbcells[2]==3) {
        ngrid[i][j]=cellscolor[2][0];
      } else {
        ngrid[i][j]=cellscolor[1][0];
      }
    } else {
      ngrid[i][j]=cellscolor[1][0];
    }
    if (nbcells[4]>1) {
      ngrid[i][j]=cellscolor[4][0];
    }
  } else if (grid[i][j]==cellscolor[4][0]) {                                                       //pour une cellule de la pop 2
    if (nbcells[4]==1 && nbcells[1]>=2) {
      ngrid[i][j]=cellscolor[4][0];
    } else if (nbcells[1]>0) {
      if (nbcells[4]==2 || nbcells[4]==3) {
        ngrid[i][j]=cellscolor[4][0];
      } else {
        ngrid[i][j]=cellscolor[1][0];
      }
    } else {
      ngrid[i][j]=cellscolor[1][0];
    }
    if (nbcells[5]>1) {
      ngrid[i][j]=cellscolor[5][0];
    }
  } else {                                                                                       //pour une cellule de la pop 3
    if (nbcells[5]==1 && nbcells[1]>=2) {
      ngrid[i][j]=cellscolor[5][0];
    } else if (nbcells[1]>0) {
      if (nbcells[5]==2 || nbcells[5]==3) {
        ngrid[i][j]=cellscolor[5][0];
      } else {
        ngrid[i][j]=cellscolor[1][0];
      }
    } else {
      ngrid[i][j]=cellscolor[1][0];
    }
    if (nbcells[2]>1) {
      ngrid[i][j]=cellscolor[2][0];
    }
  }
}


void initecosystem(int i, int j) {
  ngrid[i][j]=cellscolor[0][0];
  float r = random(1);
  initecosystem_final(i, j, r);
}


void initecosystem_final(int i, int j, float r) {
  if (r <= probasEcosystem[2]+probasEcosystem[4]+probasEcosystem[5]+probasEcosystem[1]) {
    if (r <= probasEcosystem[2]) {
      ngrid[i][j]=cellscolor[2][0];
    } else if (r <= probasEcosystem[2]+probasEcosystem[4]) {
      if (pop>=2) {
        ngrid[i][j]=cellscolor[4][0];
      }
    } else if (r <= probasEcosystem[2]+probasEcosystem[4]+probasEcosystem[5]) {
      if (pop>=3) {
        ngrid[i][j]=cellscolor[5][0];
      }
    } else {
      ngrid[i][j]=cellscolor[1][0];
    }
  } else {
    ngrid[i][j]=cellscolor[0][0];
  }
}

void clearecosystem(int i, int j){
  ngrid[i][j]=cellscolor[1][0];
}

void clicecosystem () {
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
