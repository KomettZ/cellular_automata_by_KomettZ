float probasrbase=0.5;




void rulesbase(int i, int j){
  if (grid[i][j]==color0){
    if (nbcellsc2+nbcellsc4==3){
      ngrid[i][j]=color2;
    }
  }
  if (grid[i][j]==color2||grid[i][j]==color4){
    if (nbcellsc2+nbcellsc4==2 || nbcellsc2+nbcellsc4==3){
      ngrid[i][j]=color4;
    }else{
      ngrid[i][j]=color0;
    }
  }
}

void initbase (int i, int j){
  float r = random(1);
  if (r <= probasrbase) {
    ngrid[i][j]=color2;
  }else {
    ngrid[i][j]=color0;
  }
}

void clicbase(){
  if (grid[mouseY/w][mouseX/w] ==color0) {
      ngrid[mouseY/w][mouseX/w] = color2;
      a=color2;
    } else{
      ngrid[mouseY/w][mouseX/w] =color0;
      a=color0;
    }
}