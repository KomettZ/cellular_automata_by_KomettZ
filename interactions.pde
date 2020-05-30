void mousePressed() {
  if (!menu) {
    if (mouseY>700) {
      if (ATH) {
        if (mouseY<800) {
          if (mouseX<233) {
            random=true;
          } else if (mouseX<467) {
            if (play) {
              play=false;
            } else {
              play=true;
            }
          } else {
            clear=true;
          }
        } else {
          if (mouseX<233) {
            curseurdragged = true;
            if (mouseX>51 && mouseX<182) {
              curseurXFPS=mouseX;
            }
          } else if (mouseX<467) {
            step=true;
          } else {
            menu=true;
          }
        }
      }
    } else {
      clic();
    }
  } else {  // menu :
    choosingTaille=false;
    if (mouseY>140 && mouseY<200) {
      for (int i=1; i<=6; i++) {
        if (mouseX>100*i-15 && mouseX<100*i+15) {
          rules=i;
        }
      }
    } else if (mouseY>310 && mouseY<360) {
      if (mouseX>350) {
        if (mouseX<525) {
          tore=true;
        } else {
          tore=false;
        }
      }
    } else if (mouseY>260 && mouseY<310) {
      if (mouseX>350) {
        choosingTaille=true;
      }
    } else if (mouseY>750 && mouseY<850) {
      if (mouseX>250 && mouseX<450) {
        menu=false;
        play=false;
        random=true;
      }
    }
  }
}

void mouseDragged() {
  if (mouseY<700) {
    if (a==color0) {
      ngrid[mouseY/w][mouseX/w]=color0;
    } else if (a==color1) {
      ngrid[mouseY/w][mouseX/w]=color1;
    } else if (a==color2) {
      ngrid[mouseY/w][mouseX/w]=color2;
    } else if (a==color3) {
      ngrid[mouseY/w][mouseX/w]=color3;
    } else {
      ngrid[mouseY/w][mouseX/w]=color4;
    }
  } else {
    if  (curseurdragged) {
      if (mouseX<51) {
        curseurX=51;
      } else if (mouseX>182) {
        curseurX=182;
      } else {
        curseurXFPS=mouseX;
      }
    }
  }
}

void mouseReleased() {
  curseurdragged=false;
}

void keyPressed() {
  if (key == 'z') {
    if (!play) {
      play=true;
    } else {
      play=false;
    }
  } else if (key == 'a') {
    random=true;
  } else if (key ==  'e') {
    clear=true;
  } else if (key == 's') {
    step=true;
  } else if (key == 'd') {
    if (menu) {
      menu=false;
      play=false;
      random=true;
    } else {
      menu=true;
    }
  }
  if (choosingTaille) {
    if (key>='0' && key<='9') {
      if (int(strTaille+str(key))<1000) {
        strTaille=strTaille+key;
        compteurTaille++;
      }
    } else if (keyCode==BACKSPACE) {
      if (compteurTaille>0) {
        strTaille=strTaille.substring(0, compteurTaille-1);
        compteurTaille--;
      }
    }
    if (int(strTaille)>0) {
      taille=int(strTaille);
      grid = new int[taille][taille];
      ngrid = new int [taille][taille];
      w=700/taille;
    }
  }
}
