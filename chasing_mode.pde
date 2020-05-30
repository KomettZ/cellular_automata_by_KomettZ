




void rules_chasing(int i, int j) {
  if (grid[i][j]==color2) {
    if (nbcellsc3>=3) {
      ngrid[i][j]=color3;
    }
  } else if (grid[i][j]==color3) {
    if (nbcellsc4>=3) {
      ngrid[i][j]=color4;
    }
  } else {
    if (nbcellsc2>=3) {
      ngrid[i][j]=color2;
    }
  }
}

void init_chasing(int i, int j) {
  init_zone_equal(i, j);
}

void clic_chasing() {
  clic_zone();
}
