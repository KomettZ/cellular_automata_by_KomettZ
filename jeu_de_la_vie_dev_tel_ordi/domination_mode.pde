



void rules_domination (int i, int j) {
  float r = random(1);
  if (r <= float(nbcellulesr)/float(cells)) {
    ngrid[i][j]=color2;
  } else if (r <= (float(nbcellulesr + nbcellulesb))/float(cells)) {
    ngrid[i][j]=color3;
  } else {
    ngrid[i][j]=color4;
  }
}

void init_domination (int i, int j) {
  float r = random(3);
  if (r <= 1) {
    ngrid[i][j]=color2;
  } else if (r <= 2) {
    ngrid[i][j]=color3;
  } else {
    ngrid[i][j]=color4;
  }
}

void clic_domination () {
  if (grid[mouseY/w][mouseX/w] ==color0) {
    ngrid[mouseY/w][mouseX/w] = color2;
    a=color2;
  } else if (grid[mouseY/w][mouseX/w] ==color2) {
    ngrid[mouseY/w][mouseX/w] = color3;
    a=color3;
  } else if (grid[mouseY/w][mouseX/w] ==color3) {
    ngrid[mouseY/w][mouseX/w] = color4;
    a=color4;
  }
}
