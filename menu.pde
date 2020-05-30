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
  fill(0,200,0);
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
        } else{
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



  fill(0);
  textSize(40);
  text("MODES :", 270, 50);
  for (int i=1; i<=6; i++) {
    text(str(i), 100*i-10, 120);
  }
  text("Tore", 130, 352);
  text("Taille", 130, 300 );
  textSize(35);
  text(strTaille, 370, 299);
  textSize(20);
  text("description : "+textrulesTexted, 20, 235);
  text("Oui", 415, 343);
  text("Non", 585, 343);
  textSize(40);
  fill(0);
  text("PLAY", 303, 815);
}
