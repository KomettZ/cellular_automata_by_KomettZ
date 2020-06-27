



void rules_zone (int i, int j) {
  if (nbcells[2] > nbcells[3] && nbcells[2] > nbcells[4]) {
    ngrid[i][j]=cellscolor[2][0];
  } else if (nbcells[3] > nbcells[2] && nbcells[3] > nbcells[4]) {
    ngrid[i][j]=cellscolor[3][0];
  } else if (nbcells[4] > nbcells[2] && nbcells[4] > nbcells[3]) {
    ngrid[i][j]=cellscolor[4][0];
  } else {
    float r = random(1);
    int[] l = new int[3];
    l[0]=nbcells[2];
    l[1]=nbcells[3];
    l[2]=nbcells[4];
    l = sort(l);
    if (l[0] == l[1] && l[0] == l[2]) {
      if (r <= 1) {
        ngrid[i][j]=cellscolor[2][0];
      } else if (r <= 2) {
        ngrid[i][j]=cellscolor[3][0];
      } else {
        ngrid[i][j]=cellscolor[4][0];
      }
    } else {
      if (r <= 0.5){
        if (nbcells[2] == l[2]){
          ngrid[i][j]=cellscolor[2][0];
        }else if (nbcells[3] == l[2]){
          ngrid[i][j]=cellscolor[3][0];
        }else{
          ngrid[i][j]=cellscolor[4][0];
        }
      }else{
         if (nbcells[4] == l[2]){
          ngrid[i][j]=cellscolor[4][0];
        }else if (nbcells[3] == l[2]){
          ngrid[i][j]=cellscolor[3][0];
        }else{
          ngrid[i][j]=cellscolor[2][0];
        }
      }
    }
  }
}

void init_zone(int i, int j) {
  //if (initrules==cellscolor[1][0]) {
    init_zone_equal(i, j);
  //}
}




void init_zone_equal (int i, int j) {
  float r = random(3);
  if (r <= 1) {
    ngrid[i][j]=cellscolor[2][0];
  } else if (r <= 2) {
    ngrid[i][j]=cellscolor[3][0];
  } else {
    ngrid[i][j]=cellscolor[4][0];
  }
}


void clic_zone () {
  if (grid[mouseY/w][mouseX/w] ==cellscolor[0][0]) {
    ngrid[mouseY/w][mouseX/w] = cellscolor[2][0];
    a=cellscolor[2][0];
  } else if (grid[mouseY/w][mouseX/w] ==cellscolor[2][0]) {
    ngrid[mouseY/w][mouseX/w] = cellscolor[3][0];
    a=cellscolor[3][0];
  } else if (grid[mouseY/w][mouseX/w] ==cellscolor[3][0]) {
    ngrid[mouseY/w][mouseX/w] = cellscolor[4][0];
    a=cellscolor[4][0];
  } else {
    ngrid[mouseY/w][mouseX/w] = cellscolor[0][0];
    a=cellscolor[0][0];
  }
}
