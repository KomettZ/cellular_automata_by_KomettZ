float probasvforest=0.38;



void rules_forest(int i, int j) {
  if (grid[i][j]==cellscolor[1][0]) {
    if (nbcells[2]>0) {
      ngrid[i][j]=cellscolor[2][0];
    }
  } else if (grid[i][j]==cellscolor[2][0]) {
    ngrid[i][j]=cellscolor[4][0];
  }
}
void init_forest(int i, int j) {
  float r = random(1);
  if (r<=probasvforest) {
    ngrid[i][j]=cellscolor[1][0];
  }else{
    ngrid[i][j]=cellscolor[0][0];
  }
  ngrid[taille/2][taille/2]=cellscolor[2][0];
}


void clic_forest() {
  if (grid[mouseY/w][mouseX/w] ==0) {
    ngrid[mouseY/w][mouseX/w] = 1;
    a=1;
  } else if (grid[mouseY/w][mouseX/w] ==1) {
    ngrid[mouseY/w][mouseX/w] = 2;
    a=2;
  } else if (grid[mouseY/w][mouseX/w] ==2){
    ngrid[mouseY/w][mouseX/w] = 4;
    a=4;
  } else {
    ngrid[mouseY/w][mouseX/w] = 0;
    a=0;
  }
}
