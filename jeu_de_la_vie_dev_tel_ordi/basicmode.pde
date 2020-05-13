float probasrbase=0.1;




void rulesbase(int i, int j){
  if (grid[i][j]==color0){
    if (nbcellulesr==3){
      ngrid[i][j]=color2;
    }
  }
  if (grid[i][j]==color2){
    if (nbcellulesr==2 || nbcellulesr==3){
      
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
    } else if (grid[mouseY/w][mouseX/w] ==color2){
      ngrid[mouseY/w][mouseX/w] =color0;
      a=color0;
    }
}
