




void rules_chasing(int i, int j) {
  if (grid[i][j]==cellscolor[1][0]) {
    if (nbcells[2]>=3) {
      ngrid[i][j]=cellscolor[2][0];
    } 
    if (pop==5) {
      if (nbcells[2]>=nbcells[3]) {
        if (nbcells[2]>=3) {
          ngrid[i][j]=cellscolor[2][0];
        }
      } else {
        if (nbcells[3]>=3) {
          ngrid[i][j]=cellscolor[3][0];
        }
      }
    }
  } else if (grid[i][j]==cellscolor[2][0]) {
    if (nbcells[3]>=3) {
      ngrid[i][j]=cellscolor[3][0];
    }
    if (pop==5) {
      if (nbcells[3]>=nbcells[4]) {
        if (nbcells[3]>=3) {
          ngrid[i][j]=cellscolor[3][0];
        }
      } else {
        if (nbcells[4]>=3) {
          ngrid[i][j]=cellscolor[4][0];
        }
      }
    }
  } else if (grid[i][j]==cellscolor[3][0]) {
    if (pop==3) {
      if (nbcells[1]>=3) {
        ngrid[i][j]=cellscolor[1][0];
      }
    } else if (pop==5) {
      if (nbcells[4]>=nbcells[5]) {
        if (nbcells[4]>=3) {
          ngrid[i][j]=cellscolor[4][0];
        }
      } else {
        if (nbcells[5]>=3) {
          ngrid[i][j]=cellscolor[5][0];
        }
      }
    }
  } else if (grid[i][j]==cellscolor[4][0]) {
    if (pop==5) {
      if (nbcells[5]>=nbcells[1]) {
        if (nbcells[5]>=3) {
          ngrid[i][j]=cellscolor[5][0];
        }
      } else {
        if (nbcells[1]>=3) {
          ngrid[i][j]=cellscolor[1][0];
        }
      }
    }
  } else if (grid[i][j]==cellscolor[5][0]) {
    if (pop==5) {
      if (nbcells[1]>=nbcells[2]) {
        if (nbcells[1]>=3) {
          ngrid[i][j]=cellscolor[1][0];
        }
      } else {
        if (nbcells[2]>=3) {
          ngrid[i][j]=cellscolor[2][0];
        }
      }
    }
  }
}

void init_chasing(int i, int j) {
  float r = random(1);
  init_chasing_equal(i, j, r);
}

void init_chasing_equal(int i, int j, float r) {
  if (r <= float(1)/float(pop)) {
    ngrid[i][j]=cellscolor[1][0];
  } else if (r <= float(2)/float(pop)) {
    ngrid[i][j]=cellscolor[2][0];
  } else if (r <= float(3)/float(pop)) {
    ngrid[i][j]=cellscolor[3][0];
  } else if (r <= float(4)/float(pop)) {
    ngrid[i][j]=cellscolor[4][0];
  } else if (r <= float(5)/float(pop)) {
    ngrid[i][j]=cellscolor[5][0];
  }
}

void clic_chasing() {
  clic_zone();
}
