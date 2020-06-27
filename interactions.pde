void mousePressed() {
  if (!menu) {
    if (!color_menu) {
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
              curseurFPSdragged = true;
              if (mouseX>51 && mouseX<182) {
                curseurXFPS=mouseX;
              }
            } else if (mouseX<467) {
              step=true;
            } else {
              menu=true;
              curseurFPS=300;
            }
          }
        }
      } else {
        clic();
      }
    } else {      //color_menu
      if (mouseY<60) {
        color_menu=false;
        menu=true;
      }
    }
  } else {       // menu :
    choosingTaille=false;
    if (mouseY<60) {
      color_menu=true;
      menu=false;
    } else if (mouseY>140 && mouseY<200) {
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
    } else if (mouseY>435 && mouseY<465) {
      if (rules==1) {
        if (mouseX>milieuBasic-75 && mouseX<milieuBasic+75) {
          curseurBASICdragged=true;
        }
      } else if (rules==6) {
        if (mouseX>milieuForest-75 && mouseX<milieuForest+75) {
          curseurFORESTdragged=true;
        }
      }
    } else if (mouseY>485 && mouseY<515) {
      if (rules==2) {
        for (int i=1; i<=3; i++) {
          if (mouseX>175*i-15 && mouseX<175*i+15) {
            pop=i;
          }
        }
      } else if (rules==5) {
        for (int i=1; i<=2; i++) {
          if (mouseX>220*i-15 && mouseX<220*i+15) {
            pop=2*i+1;
          }
        }
      }
    } else if (mouseY>curseurYEcosystem-15 && mouseY<curseurYEcosystem+15) {
      if (rules==2) {
        for (int i=2; i<=4; i++) {
          if (mouseX>milieuEcosystem[i]-75 && mouseX<milieuEcosystem[i]+75) {
            curseurECOSYSTEMdragged[i]=true;
          }
        }
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
  if (menu) {
    if (rules==1) {
      if (curseurBASICdragged) {
        if (mouseX<milieuBasic-75) {
          curseurXBasic=milieuBasic-75;
        } else if (mouseX>milieuBasic+75) {
          curseurXBasic=milieuBasic+75;
        } else {
          curseurXBasic=mouseX;
        }
      }
    } else if (rules==2) {
      for (int i=2; i<=4; i++) {
        if (curseurECOSYSTEMdragged[i]) {
          if (mouseX<milieuEcosystem[i]-75) {
            curseurXEcosystem[i]=milieuEcosystem[i]-75;
          } else if (mouseX>milieuEcosystem[i]+75) {
            curseurXEcosystem[i]=milieuEcosystem[i]+75;
          } else {
            curseurXEcosystem[i]=mouseX;
          }
        }
      }
    } else if (rules==6) {
      if (curseurFORESTdragged) {
        if (mouseX<milieuForest-75) {
          curseurXForest=milieuForest-75;
        } else if (mouseX>milieuForest+75) {
          curseurXForest=milieuForest+75;
        } else {
          curseurXForest=mouseX;
        }
      }
    }
  } else {
    if (mouseY<700) {
      if (a==cellscolor[0][0]) {
        ngrid[mouseY/w][mouseX/w]=cellscolor[0][0];
      } else if (a==cellscolor[1][0]) {
        ngrid[mouseY/w][mouseX/w]=cellscolor[1][0];
      } else if (a==cellscolor[2][0]) {
        ngrid[mouseY/w][mouseX/w]=cellscolor[2][0];
      } else if (a==cellscolor[3][0]) {
        ngrid[mouseY/w][mouseX/w]=cellscolor[3][0];
      } else {
        ngrid[mouseY/w][mouseX/w]=cellscolor[4][0];
      }
    } else {
      if  (curseurFPSdragged) {
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
}

void mouseReleased() {
  curseurFPSdragged=false;
  curseurBASICdragged=false;
  curseurFORESTdragged=false;
  for (int i=2; i<=4; i++) {
    curseurECOSYSTEMdragged[i]=false;
  }
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
      color_menu=false;
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
