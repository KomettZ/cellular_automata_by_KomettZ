float probasvforest=0.35;



void rules_forest(int i, int j) {
  if (grid[i][j]==color1) {
    if (nbcellulesr>0) {
      ngrid[i][j]=color2;
    }
  } else if (grid[i][j]==color2) {
    ngrid[i][j]=color4;
  }
}
void init_forest(int i, int j) {
  float r = random(1);
  if (r<=probasvforest) {
    ngrid[i][j]=color1;
  }else{
    ngrid[i][j]=color0;
  }
  ngrid[taille/2][taille/2]=color2;
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
