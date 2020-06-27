void color_menu(){
  background(85, 103, 188);
  fill(85, 103, 188);
  if (mouseY<60 && mouseX>500){
    fill(57,177,255);
  }
  rect(500, 0, 200, 60);
  fill(0);
  text("MENU",540,45);
}
