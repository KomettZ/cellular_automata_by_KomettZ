



void rules_zone (int i, int j) {
  if (nbcellsc2 > nbcellsc3 && nbcellsc2 > nbcellsc4) {
    ngrid[i][j]=color2;
  } else if (nbcellsc3 > nbcellsc2 && nbcellsc3 > nbcellsc4) {
    ngrid[i][j]=color3;
  } else if (nbcellsc4 > nbcellsc2 && nbcellsc4 > nbcellsc3) {
    ngrid[i][j]=color4;
  } else {
    float r = random(1);
    int[] l = new int[3];
    l[0]=nbcellsc2;
    l[1]=nbcellsc3;
    l[2]=nbcellsc4;
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
        if (nbcellsc2 == l[2]){
          ngrid[i][j]=color2;
        }else if (nbcellsc3 == l[2]){
          ngrid[i][j]=color3;
        }else{
          ngrid[i][j]=color4;
        }
      }else{
         if (nbcellsc4 == l[2]){
          ngrid[i][j]=color4;
        }else if (nbcellsc3 == l[2]){
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
