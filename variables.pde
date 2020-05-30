int taille=100;
int compteurTaille=3;
int[][] grid = new int[taille][taille];
int[][] ngrid = new int [taille][taille];
int w=700/taille; //width(largeur) de chaque cellule
int x;
int y;
int a;
float s;
int white=0;
int light_green=1;
int green=2;
int red=3;
int mazarine=4;
int light_blue=5;
int black=6;
int yellow=7;
int orange=8;
int purple=9;
boolean  menu=false;
boolean ATH=true;
boolean play = false;
boolean tore = true;
boolean random = false;
boolean clear = false;
boolean step;
int lastsecond=0;
int lastframe;
int frame;
boolean curseurdragged;
boolean choosingTaille;
String strTaille=str(taille);
boolean cursorOnPlay;
int curseur;
int curseurX;
int curseurFPS;
int curseurXFPS=116;
int milieuFPS=116;
int FPS;
String[] textrules = {"Conway's Game Of Life","Ecosystem Simulation with food","Zone War","Political Assembly","Spirals","Forest Fire Simulation"};
String textrulesTexted;
boolean menuModeChoosing;
int cells;
int nbcellsc1;
int nbcellsc2;
int nbcellsc3;
int nbcellsc4;
int cellsr2;
int nbcellsc1r2;
int nbcellsc2r2;
int nbcellsc3r2;
int nbcellsc4r2;

int color0=white;
int color1=light_green;
int color2=red;
int color3=mazarine;
int color4=black;

int pop=2;


int rules=1;
//rules = 1 : basicmode
//rules = 2 : ecosystem_mode
//rules = 3 : zone_mode
//rules = 4 : domination_mode
//rules = 5 : chasing_mode
//rules = 6 : forest_mode
int initrules = 2;
//initrules : check assigned pages (page of the mode)
