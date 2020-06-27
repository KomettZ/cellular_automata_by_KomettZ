int pop=1;


int taille=100;
int compteurTaille=3;
int[][] grid = new int[taille][taille];
int[][] ngrid = new int [taille][taille];
int w=700/taille; //width(largeur) de chaque cellule
int x;
int y;
int a;
float s;
int[] white={0,255,255,255};
int[] light_green={1,0,255,0};
int[] green={2,0,200,0};
int[] red={3,255,0,0};
int[] blue={4,0,0,255};
int[] light_blue={5,0,0,255};
int[] black={6,0,0,0};
int[] yellow={7,255,0,0};
int[] orange={8,255,128,0};
int[] purple={9,128,0,128};
int[] brown={10,128,0,0};
boolean color_menu=false;
boolean menu=true;
boolean ATH=true;
boolean play = false;
boolean tore = true;
boolean random = false;
boolean clear = false;
boolean step;
int lastsecond=0;
int lastframe;
int frame;
boolean choosingTaille;
String strTaille=str(taille);
boolean cursorOnPlay;
int curseurX;
int curseurFPS, curseurXFPS=116, curseurYFPS=870, milieuFPS=116;
int FPS;
boolean curseurFPSdragged;
int curseurBasic, curseurXBasic=350, curseurYBasic=450, milieuBasic=350;
boolean curseurBASICdragged;
int curseurForest, curseurXForest=350-75+int(probasvforest*150), curseurYForest=450, milieuForest=350;
boolean curseurFORESTdragged;
int[] curseurEcosystem = new int[5];
int[] curseurXEcosystem={0,0,175,175*2,175*3};
int[] milieuEcosystem={0,0,175,175*2,175*3};
int curseurYEcosystem=550;
boolean[] curseurECOSYSTEMdragged = new boolean[5];
String[] textrules = {"Conway's Game Of Life","Ecosystem Simulation with food","Zone War","Political Assembly","Spirals","Forest Fire Simulation"};
String textrulesTexted;
boolean menuModeChoosing;
int cells;
int cellsr2;
int[] nbcells = new int[6];
int[] nbcellsr2 = new int[6];

int[][] cellscolor={white,light_green,blue,green,black,red};

int rules=2;
//rules = 1 : basicmode
//rules = 2 : ecosystem_mode
//rules = 3 : zone_mode
//rules = 4 : domination_mode
//rules = 5 : chasing_mode
//rules = 6 : forest_mode
int initrules = 2;
//initrules : check assigned pages (page of the mode)
