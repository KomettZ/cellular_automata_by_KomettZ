



void rules_zone (int i, int j) {
  if (nbcellulesr > nbcellulesb && nbcellulesr > nbcellulesn) {
    ngrid[i][j]=color2;
  } else if (nbcellulesb > nbcellulesr && nbcellulesb > nbcellulesn) {
    ngrid[i][j]=color3;
  } else if (nbcellulesn > nbcellulesr && nbcellulesn > nbcellulesb) {
    ngrid[i][j]=color4;
  } else {
    float r = random(1);
    int[] l = new int[3];
    l[0]=nbcellulesr;
    l[1]=nbcellulesb;
    l[2]=nbcellulesn;
    l = sort(l);
    if (l[0] == l[1] && l[0] == l[2]) {
      if (r <= 1) {
        ngrid[i][j]=color2;
      } else if (r <= 2) {
        ngrid[i][j]=color3;
      } else {
        ngrid[i][j]=color4;
      }
    } else {
      if (r <= 0.5){
        if (nbcellulesr == l[2]){
          ngrid[i][j]=color2;
        }else if (nbcellulesb == l[2]){
          ngrid[i][j]=color3;
        }else{
          ngrid[i][j]=color4;
        }
      }else{
         if (nbcellulesn == l[2]){
          ngrid[i][j]=color4;
        }else if (nbcellulesb == l[2]){
          ngrid[i][j]=color3;
        }else{
          ngrid[i][j]=color2;
        }
      }
    }
  }
}

void init_zone(int i, int j) {
  //if (initrules==color1) {
    init_zone_equal(i, j);
  //}
}




void init_zone_equal (int i, int j) {
  float r = random(3);
  if (r <= 1) {
    ngrid[i][j]=color2;
  } else if (r <= 2) {
    ngrid[i][j]=color3;
  } else {
    ngrid[i][j]=color4;
  }
}


void clic_zone () {
  if (grid[mouseY/w][mouseX/w] ==color0) {
    ngrid[mouseY/w][mouseX/w] = color2;
    a=color2;
  } else if (grid[mouseY/w][mouseX/w] ==color2) {
    ngrid[mouseY/w][mouseX/w] = color3;
    a=color3;
  } else if (grid[mouseY/w][mouseX/w] ==color3) {
    ngrid[mouseY/w][mouseX/w] = color4;
    a=color4;
  } else {
    ngrid[mouseY/w][mouseX/w] = color0;
    a=color0;
  }
}
