float probasrbase=0.5;




void rulesbase(int i, int j){
  if (grid[i][j]==cellscolor[0][0]){
    if (nbcells[2]+nbcells[1]==3){
      ngrid[i][j]=cellscolor[2][0];
    }
  }
  if (grid[i][j]==cellscolor[2][0]||grid[i][j]==cellscolor[1][0]){
    if (nbcells[2]+nbcells[1]==2 || nbcells[2]+nbcells[1]==3){
      ngrid[i][j]=cellscolor[1][0];
    }else{
      ngrid[i][j]=cellscolor[0][0];
    }
  }
}

void initbase (int i, int j){
  float r = random(1);
  if (r <= probasrbase) {
    ngrid[i][j]=cellscolor[2][0];
  }else {
    ngrid[i][j]=cellscolor[0][0];
  }
}

void clicbase(){
  if (grid[mouseY/w][mouseX/w] ==cellscolor[0][0]) {
      ngrid[mouseY/w][mouseX/w] = cellscolor[2][0];
      a=cellscolor[2][0];
    } else{
      ngrid[mouseY/w][mouseX/w] =cellscolor[0][0];
      a=cellscolor[0][0];
    }
}
