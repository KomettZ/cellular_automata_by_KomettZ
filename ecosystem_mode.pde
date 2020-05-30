//initrules = 1 : alive cells + grass + void
//initrules = 2 : alive cells + grass


float probasc4ecosystem=0.05;
float probasc2ecosystem=0.05;
float probasc1ecosystem=0.4;

void rulesecosystem(int i, int j) {
  if (pop==1) {
    rulesecosystem_pop1(i, j);
  } else if (pop==2) {
    rulesecosystem_pop2(i, j);
  }
}


void rulesecosystem_pop1 (int i, int j) {
  nbcellsc1=nbcellsc1+nbcellsc3;
  if (grid[i][j]==color0) {               //pour une cellule morte
    if (nbcellsc1>=3) {
      if (nbcellsc2==2) {
        ngrid[i][j]=color2;
      } else {
        if (nbcellsc2==0 && nbcellsc1>=4) {
          ngrid[i][j]=color1;
        }
      }
    }
  } else if (grid[i][j]==color1) {        //pour une case d'herbe
    if (nbcellsc1==8) {
      ngrid[i][j]=color3;
    }
    if (nbcellsc2>=2) {
      ngrid[i][j]=color0;
    }
  } else if (grid[i][j]==color3) {      //pour une cellule d'arbre
    if (nbcellsc2>=2) {
      ngrid[i][j]=color1;
    }
  } else {                              //pour une cellule vivante
    if (nbcellsc2==1 && nbcellsc1>=2) {
      ngrid[i][j]=color2;
    } else if (nbcellsc1>0) {
      if (nbcellsc2==2 || nbcellsc2==3) {
        ngrid[i][j]=color2;
      } else {
        ngrid[i][j]=color1;
      }
    } else {
      ngrid[i][j]=color1;
    }
  }
} 

void rulesecosystem_pop2(int i, int j) {
  nbcellsc1=nbcellsc1+nbcellsc3;
  if (grid[i][j]==color0) {               //pour une cellule morte
    if (nbcellsc1>=3) {
      if (nbcellsc2+nbcellsc4==2) { //à voir
        if (nbcellsc2>nbcellsc4) {
          ngrid[i][j]=color2;
        } else if (nbcellsc2<nbcellsc4) {
          ngrid[i][j]=color4;
        } else {
          ngrid[i][j]=color1;
        }
      } else {
        if (nbcellsc2+nbcellsc4==0 && nbcellsc1>=4) {
          ngrid[i][j]=color1;
        }
      }
    }
  } else if (grid[i][j]==color1) {        //pour une case d'herbe
    if (nbcellsc1==8) {
      ngrid[i][j]=color3;
    }
    if (nbcellsc2+nbcellsc4>=2) {
      ngrid[i][j]=color0;
    }
  } else if (grid[i][j]==color3) {      //pour une cellule d'arbre
    if (nbcellsc2+nbcellsc4>=2) {
      ngrid[i][j]=color1;
    }
  } else if (grid[i][j]==color2) {                              //pour une cellule vivante de la pop 1
    if (nbcellsc2>nbcellsc4) {
      if (nbcellsc2==1 && nbcellsc1+nbcellsc4>=2) {
        ngrid[i][j]=color2;
      } else if (nbcellsc1+nbcellsc4>0) {
        if (nbcellsc2==2 || nbcellsc2==3) {
          ngrid[i][j]=color2;
        } else {
          ngrid[i][j]=color1;
        }
      } else {
        ngrid[i][j]=color1;
      }
    } else {
      if (nbcellsc2==1 && nbcellsc1>=2) {
        ngrid[i][j]=color2;
      } else if (nbcellsc1>0) {
        if (nbcellsc2==2 || nbcellsc2==3) {
          ngrid[i][j]=color2;
        } else {
          ngrid[i][j]=color1;
        }
      } else {
        ngrid[i][j]=color1;
      }
    }
  } else {                                                       //pour une cellule de la pop 2
    if (nbcellsc4>nbcellsc2) {
      if (nbcellsc4==1 && nbcellsc1+nbcellsc2>=2) {
        ngrid[i][j]=color4;
      } else if (nbcellsc1+nbcellsc2>0) {
        if (nbcellsc4==2 || nbcellsc4==3) {
          ngrid[i][j]=color4;
        } else {
          ngrid[i][j]=color1;
        }
      } else {
        ngrid[i][j]=color1;
      }
    } else {
      if (nbcellsc4==1 && nbcellsc1>=2) {
        ngrid[i][j]=color4;
      } else if (nbcellsc1>0) {
        if (nbcellsc4==2 || nbcellsc4==3) {
          ngrid[i][j]=color4;
        } else {
          ngrid[i][j]=color1;
        }
      } else {
        ngrid[i][j]=color1;
      }
    }
  }
}


void initecosystem(int i, int j) {
  float r = random(1);
  if (pop==1) {
    if (initrules==1) {
      initecosystem_color1_color0(i, j, r);
    } else {
      initecosystem_color1(i, j, r);
    }
  } else {
    if (initrules==1) {
      initecosystem_pop2_color1_color2(i, j, r);
    } else {
      initecosystem_pop2_color1(i, j, r);
    }
  }
}


void initecosystem_color1_color0(int i, int j, float r) {
  if (r <= probasc2ecosystem) {
    ngrid[i][j]=color2;
  } else if (r <= probasc2ecosystem+probasc1ecosystem) {
    ngrid[i][j]=color1;
  } else {
    ngrid[i][j]=0;
  }
}
void initecosystem_color1(int i, int j, float r) {
  if (r <= probasc2ecosystem) {
    ngrid[i][j]=color2;
  } else {
    ngrid[i][j]=color1;
  }
}

void initecosystem_pop2_color1_color2(int i, int j, float r) {
  if (r <= probasc2ecosystem) {
    ngrid[i][j]=color2;
  } else if (r <= probasc2ecosystem+probasc4ecosystem) {
    ngrid[i][j]=color4;
  } else if (r <= probasc2ecosystem+probasc1ecosystem) {
    ngrid[i][j]=color1;
  } else {
    ngrid[i][j]=0;
  }
}

void initecosystem_pop2_color1(int i, int j, float r) {
  if (r <= probasc2ecosystem) {
    ngrid[i][j]=color2;
  } else if (r <= probasc2ecosystem+probasc4ecosystem) {
    ngrid[i][j]=color4;
  } else {
    ngrid[i][j]=color1;
  }
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
