void menu () {
  background(85, 103, 188);
  fill(85, 103, 188);
  rect(0, 260, 350, 50);
  rect(0, 310, 350, 50);
  fill(255);
  rect(350, 260, 350, 50);
  for (int i=100; i<700; i=i+100) {
    ellipse(i, 170, 30, 30);
  }
  fill(0, 200, 0);
  for (int i=1; i<=6; i++) {
    if (rules==i) {
      if (!menuModeChoosing) {
        textrulesTexted=textrules[i-1];
      }
      ellipse(100*i, 170, 20, 20);
    }
  }
  if (mouseY>155 && mouseY<185) {
    for (int i=1; i<=6; i++) {
      if (mouseX>100*i-15 && mouseX<100*i+15) {
        if (rules==i) {
          fill(0, 255, 0);
        } else {
          fill(57, 177, 255);
        }
        textrulesTexted=textrules[i-1];
        ellipse(100*i, 170, 20, 20);
        menuModeChoosing=true;
      } else {
        menuModeChoosing=false;
      }
    }
  } else if (mouseY>260 && mouseY<310) {
    if (mouseX>350) {
      fill(220, 220, 220);
      rect(350, 260, 350, 50);
    }
  } else if (mouseY>750 && mouseY<850) {
    if (mouseX>250 && mouseX<450) {
      cursorOnPlay=true;
    }
  } else if (mouseY>485 && mouseY<515) {
  } else {
    menuModeChoosing=false;
    cursorOnPlay=false;
  }
  fill(0);  // curseur pour choisir la taille
  if (choosingTaille) { 
    strokeWeight(1.3);
    if (int(s/500)%2==0) {
      line(compteurTaille*23+364, 270, compteurTaille*23+376, 270);
      line(compteurTaille*23+370, 270, compteurTaille*23+370, 300);
      line(compteurTaille*23+364, 300, compteurTaille*23+376, 300);
    }
    strokeWeight(1);
  }
  fill(85, 103, 188);
  if (mouseY<60 && mouseX>500) {
    fill(57, 177, 255);
  }
  rect(500, 0, 200, 60);
  if (mouseY>310 && mouseY<360 && mouseX>350 && mouseX<525) {
    if (tore) {
      fill(0, 255, 0);
    } else {
      fill(57, 177, 255);
    }
  } else {
    if (tore) {
      fill(0, 200, 0);
    } else {
      fill(85, 103, 188);
    }
  }
  rect(350, 310, 175, 50);
  if (mouseY>310 && mouseY<360 && mouseX>525 && mouseX<700) {
    if (!tore) {
      fill(0, 255, 0);
    } else {
      fill(57, 177, 255);
    }
  } else {
    if (!tore) {
      fill(0, 200, 0);
    } else {
      fill(85, 103, 188);
    }
  }
  rect(525, 310, 175, 50);
  if (cursorOnPlay) {
    fill(0, 255, 0);
  } else {
    fill(0, 200, 0);
  }
  rect(250, 750, 200, 100);

  if (rules==1) {
    Curseur CurseurBASIC = new Curseur(curseurYBasic, milieuBasic, curseurXBasic, cellscolor[2]);
    curseurBasic=curseurXBasic-milieuBasic+75;
    probasrbase=float(curseurBasic)/150;
    fill(0);
    text(probasrbase, milieuBasic-70, curseurYBasic+55);
    textSize(30);
    text("Probabilité D'Apparition D'Une Cellule Vivante :", 10, 410);
    textSize(40);
  } else if (rules==2) {
    if (pop>3) {
      pop=3;
    }
    for (int i=1; i<=3; i++) {
      fill(255);
      ellipse(175*i, 500, 30, 30);
      if (pop==i) {
        fill(0, 200, 0);
        ellipse(175*i, 500, 20, 20);
      }
      if (mouseX>175*i-15 && mouseX<175*i+15 && mouseY>485 && mouseY<515) {
        if (pop==i) {
          fill(0, 255, 0);
        } else {
          fill(57, 177, 255);
        }
        ellipse(175*i, 500, 20, 20);
      }
      fill(0);
      text(i, 175*i-12, 470);
    }   
    Curseur CurseurEcosystem2 = new Curseur(curseurYEcosystem, milieuEcosystem[2], curseurXEcosystem[2], cellscolor[2]);
    curseurEcosystem[2]=curseurXEcosystem[2]-milieuEcosystem[2]+75;
    probasEcosystem[2]=float(curseurEcosystem[2])/150/pop;
    fill(0);
    text(probasEcosystem[2], milieuEcosystem[2]-70, curseurYEcosystem+55);
    if (pop>=2) {
      Curseur CurseurEcosystem3 = new Curseur(curseurYEcosystem, milieuEcosystem[3], curseurXEcosystem[3], cellscolor[4]);
      curseurEcosystem[3]=curseurXEcosystem[3]-milieuEcosystem[3]+75;
      probasEcosystem[4]=float(curseurEcosystem[3])/150/pop;
      fill(0);
      text(probasEcosystem[4], milieuEcosystem[3]-70, curseurYEcosystem+55);
    }
    if (pop>=3) {
      Curseur CurseurEcosystem4 = new Curseur(curseurYEcosystem, milieuEcosystem[4], curseurXEcosystem[4], cellscolor[5]);
      curseurEcosystem[4]=curseurXEcosystem[4]-milieuEcosystem[4]+75;
      probasEcosystem [5]=float(curseurEcosystem[4])/150/pop;
      fill(0);
      text(probasEcosystem[5], milieuEcosystem[4]-70, curseurYEcosystem+55);
    }
    text("Types Of Living Cells :", 150, 410);
  } else if (rules==4) {
    textSize(25);
    fill(red[1],red[2],red[3]);
    text("This mode can be dangerous for epileptics people", 50,730);
    textSize(40);
  } else if (rules==5) {
    if (pop!=3 && pop!=5) {
      pop=3;
    }
    for (int i=1; i<=2; i++) {
      fill(255);
      ellipse(220*i, 500, 30, 30);
      if (pop==2*i+1) {
        fill(0, 200, 0);
        ellipse(220*i, 500, 20, 20);
      }
      if (mouseX>220*i-15 && mouseX<220*i+15 && mouseY>485 && mouseY<515) {
        if (pop==2*i+1) {
          fill(0, 255, 0);
        } else {
          fill(57, 177, 255);
        }
        ellipse(220*i, 500, 20, 20);
      }
      fill(0);
      text(2*i+1, 220*i-12, 470);
    }
    text("Number Of Colors :", 150, 410);
  } else if (rules==6) {
    Curseur CurseurFOREST = new Curseur(curseurYForest, milieuForest, curseurXForest, cellscolor[1]);
    curseurForest=curseurXForest-milieuForest+75;
    probasvforest=float(curseurForest)/150;
    fill(0);
    text(probasvforest, milieuForest-70, curseurYForest+55);
    textSize(30);
    text("Probabilité D'Apparition D'Un Arbre :", 90, 410);
    textSize(40);
  }





  fill(0);
  textSize(40);
  text("MODES :", 270, 50);
  for (int i=1; i<=6; i++) {
    text(str(i), 100*i-12, 120);
  }
  text("Tore", 130, 352);
  text("Taille", 130, 300 );
  textSize(35);
  text(strTaille, 370, 299);
  textSize(20);
  text("description : "+textrulesTexted, 20, 235);
  text("Yes", 415, 343);
  text("No", 590, 343);
  textSize(25);
  text("COLOR MENU", 520, 43);
  textSize(40);
  fill(0);
  text("PLAY", 303, 815);
}
