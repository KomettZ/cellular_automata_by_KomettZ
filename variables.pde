int taille=300;
int[][] grid = new int[taille][taille];
int[][] ngrid = new int [taille][taille];
int w=700/taille; //width(largeur) de chaque cellule
int x;
int y;
int a;
int white=0;
int green=1;
int red=2;
int blue=3;
int black=4;
int yellow=5;
int color0=white;
int color1=green;
int color2=red;
int color3=blue;
int color4=black;
boolean play = false;
boolean random = false;
boolean ATH = true;
boolean clear = false;
boolean curseurdragged;
int curseurX=116;
int curseur;
int IPS;
int cells;
int nbcellulesv;
int nbcellulesr;
int nbcellulesb;
int nbcellulesn;
int rules=5;
//rules = 1 : basicmode
//rules = 2 : devmode
//rules = 3 : zone_mode
//rules = 4 : domination_mode
//rules = 5 : chasing_mode
int initrules = 2;
//initrules : check assigned pages
