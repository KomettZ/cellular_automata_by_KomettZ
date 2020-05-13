void animation(int i, int j) {
  cells=0;
  nbcellulesv=0;
  nbcellulesr=0;
  nbcellulesb=0;
  nbcellulesn=0;
  for (int ii=-1; ii<2; ii++) {
    for (int jj=-1; jj<2; jj++) {
      if (0<=i+ii && i+ii<taille && 0<=j+jj && j+jj<taille) {
        if (ii!=0 || jj!=0) {
          cells++;
          if (grid[i+ii][j+jj]==color1) {
            nbcellulesv++;
          } else if (grid[i+ii][j+jj]==color2) {
            nbcellulesr++;
          } else if (grid[i+ii][j+jj]==color3) {
            nbcellulesb++;
          } else if (grid[i+ii][j+jj]==color4) {
            nbcellulesn++;
          }
        }
      }
    }
  }
  if (rules==1) {
    rulesbase(i, j);
  } else if (rules==2) {
    rulesdev(i, j);
  } else if (rules==3) {
    rules_zone(i, j);
  } else if (rules==4) {
    rules_domination(i, j);
  } else if (rules==5){
    rules_chasing(i, j);
  } else if (rules == 6){
    rules_forest(i, j);
  }
}

void init (int i, int j) {
  if (rules==1) {
    initbase(i, j);
  } else if (rules==2) {
    initdev(i, j);
  } else if (rules==3) {
    init_zone(i, j);
  } else if (rules==4) {
    init_domination(i, j);
  } else if (rules==5){
    init_chasing(i, j);
  }else if (rules==6){
    init_forest(i, j);
  }
}

void clic() {
  if (rules==1) {
    clicbase();
  } else if (rules==2) {
    clicdev();
  } else if (rules==3) {
    clic_zone();
  } else if (rules==4) {
    clic_domination();
  } else if (rules==5){
    clic_chasing();
  }else if (rules==6){
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
  textSize(40);
  fill(0);
  text("Play", 313, 770);
  text("Random", 45, 770);
  text("Clear", 532, 770);
  curseur(curseurX);
}

void curseur (int curseurX) {
  int curseurY=870;
  int espacedroit=41;
  curseur=curseurX-espacedroit;
  textSize(40);
  text("IPS", 90, 843);
  fill(255);
  ellipse(espacedroit+75, 870, 150, 10);
  fill(250, 0, 0);
  ellipse(curseurX, curseurY, 20, 20);
}
