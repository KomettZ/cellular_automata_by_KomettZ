



void rules_domination (int i, int j) {
  float r = random(1);
  if (r <= float(nbcells[2])/float(cells)) {
    ngrid[i][j]=cellscolor[2][0];
  } else if (r <= (float(nbcells[2] + nbcells[3]))/float(cells)) {
    ngrid[i][j]=cellscolor[3][0];
  } else {
    ngrid[i][j]=cellscolor[4][0];
  }
}

void init_domination (int i, int j) {
  float r = random(3);
  if (r <= 1) {
    ngrid[i][j]=cellscolor[2][0];
  } else if (r <= 2) {
    ngrid[i][j]=cellscolor[3][0];
  } else {
    ngrid[i][j]=cellscolor[4][0];
  }
}

void clic_domination () {
  if (grid[mouseY/w][mouseX/w] ==cellscolor[0][0]) {
    ngrid[mouseY/w][mouseX/w] = cellscolor[2][0];
    a=cellscolor[2][0];
  } else if (grid[mouseY/w][mouseX/w] ==cellscolor[2][0]) {
    ngrid[mouseY/w][mouseX/w] = cellscolor[3][0];
    a=cellscolor[3][0];
  } else if (grid[mouseY/w][mouseX/w] ==cellscolor[3][0]) {
    ngrid[mouseY/w][mouseX/w] = cellscolor[4][0];
    a=cellscolor[4][0];
  }
}
