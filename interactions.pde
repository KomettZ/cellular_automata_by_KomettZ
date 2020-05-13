void mousePressed() {
  if (mouseY>700) {
    if (ATH) {
      if (mouseY<800) {
        if (mouseX<233) {
          random=true;
        } else if (mouseX<467){
          if (play) {
            play=false;
          } else {
            play=true;
          }
        }else{
          clear=true;
        }
      } else {
        if (mouseX<233) {
          //if (mouseX>=curseurX-10 && mouseX<=curseurX+10 && mouseY>=curseurY-10 && mouseY<=curseurY+10) {
            curseurdragged = true;
          //}
        }
      }
    }
  } else {
    clic();
  }
}

void mouseDragged() {
  if (mouseY<700) {
    if (a==color0) {
      ngrid[mouseY/w][mouseX/w]=color0;
    } else if (a==color1){
      ngrid[mouseY/w][mouseX/w]=color1;
    }else if (a==color2){
      ngrid[mouseY/w][mouseX/w]=color2;
    }else if (a==color3){
      ngrid[mouseY/w][mouseX/w]=color3;
    }else{
      ngrid[mouseY/w][mouseX/w]=color4;
    }
  } else {
    if  (curseurdragged) {
      if (mouseX<51) {
        curseurX=51;
      } else if (mouseX>182) {
        curseurX=182;
      } else {
        curseurX=mouseX;
      }
    }
  }
}

void mouseReleased(){
  curseurdragged=false;
}

void keyPressed() {
  if (key == 'z') {
    if (!play) {
      play=true;
    } else {
      play=false;
    }
  }
  if (key == 'a') {
    random=true;
  }
  if (key ==  'e'){
    clear=true;
  }
}
