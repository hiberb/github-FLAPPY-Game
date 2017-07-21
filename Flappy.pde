//Deklaration und Initialisierung der Globalen Variablen //<>//

float width = 300;
float height = 300;
float widthOfTheWalls = 40;
float xPosOfTheBird = width /8*3;
float radius = 20;
public int punkte = 0;
int i;
int q = 1;
int w = 0;
public int hilfe;
public int hilfe2;
public int bestepunktzahl = 0;
boolean anfang = false;

float xPosOfTheWalls = width;
float xSpeedOfTheWalls = -width/100; // Schnelligkeit
float heightOfTheSpace = height/3;  //Höhe
float heightOfTheTopWall = height /3;  //Höhe von oben
boolean endOfTheGame = false;
Bird bird = new Bird();    //Erzeugung eines neuen ''Birds'' mit new Bird
color colorA = color(0,255,0);


void setup()
{ 
    size(300,300);
    ellipseMode(CENTER);
}

void gameoverpage()  //Prozedur gameoverpage zum Darstellen des GameOvers
{
     background(238,154,37);
     textSize(20);
     fill(85,26,139);
     text("---------------------------------------------------------",1,110);
     text("---------------------------------------------------------",1,220);
     text("GAME OVER! ",90,190);
     text("Ihre Punktzahl: ", 55,50);
     text("Ihre Beste Punktzahl:",45,130);
     text("Zum Neustart 'a' drücken",40,290);
     text("Zum Hauptmenü 'r' drücken",10,260);
     
     hilfe = punkte;
     
     if (punkte > hilfe2)
    {
         hilfe2 = punkte;      
         textSize(20);
         fill(colorA);
         text("--> Neuer Rekord <--",42,90);
     }
     
     if (punkte > bestepunktzahl || bestepunktzahl == 0)
     {
         bestepunktzahl = punkte;      
     }
          
         text(bestepunktzahl,260,130);  
         endOfTheGame = true;
}




void draw()
{
  
  if (anfang == false) //<>//
    {
        ausgabe(); // Aufrufen der Prozedur ausgabe
    }
    else    
    
  if (! endOfTheGame) // Wird ausgeführt, wenn das Spiel noch nicht beendet ist (Verloren)
  {
      if (xPosOfTheWalls < -widthOfTheWalls) // Abfrage, damit die Wand nachdem sie den Bildschirm verlassen hat, wieder von rechts kommt
  {      
      heightOfTheSpace = random(height/6) + height/6; // Generierung von random-Größen für Space und top wall
      heightOfTheTopWall = random(height/2);
      xPosOfTheWalls = width;
  }
  
      bird.schwerkraftEffekt();
 
      xPosOfTheWalls += xSpeedOfTheWalls; 
      background(238,154,37);
      bird.showTheBird(); // Funktionsaufruf des Vogels
      fill(0,0,0);
      rect(xPosOfTheWalls,0,widthOfTheWalls,heightOfTheTopWall);
      rect(xPosOfTheWalls,heightOfTheTopWall + heightOfTheSpace, widthOfTheWalls,height-heightOfTheSpace-heightOfTheTopWall);

  
  if (xPosOfTheBird < xPosOfTheWalls + widthOfTheWalls & xPosOfTheBird > xPosOfTheWalls)
  { 
   if (bird.getY() > heightOfTheTopWall + heightOfTheSpace  || bird.getY() < heightOfTheTopWall)
   {
       gameoverpage();
   }
  }
      check();  //Überprüfung der Punkte
  }  
}

  void check()  //Überprüfung der Punkte
  {
  if (xPosOfTheWalls == 0)  
  {   
      punkte = punkte + 1; // Punkte werden erhöht
  }  
      fill(85,26,139);
      textSize(20);
      text(punkte,240,49); // Ausgabe der Punkte
  }
 
  
void keyPressed()
{
  if (keyCode == UP)
  {
       bird.jump();    //Funktionsaufruf
  }
  
    if (keyPressed) // Zum Stoppen
    {
    if (key == 'r')
    {                   
        background(0);
        fill(255,0,0);     
        textSize(25);
        text("Flappy Bird",90,30);    
        text("----------",85,40);
        text("Drücke 'a' um zu Spielen!",1,240);
        fill(0);
        noStroke(); 
    }
    
    if (keyPressed) 
    {
    if (key == 'a')
     {    
       
        bird.yPos = 150;            //Damit der Vogel beim nächsten Neustart erhalten bleibt und nicht verschwindet
        bird.yGeschwindigkeit = 0; // Damit das Spiel nicht schon mit der schnellsten Schnelligkeit beginnt
        
        punkte = 0; //<>//
        float width = 300;
        float height = 300;
        widthOfTheWalls = 40;
        xPosOfTheBird = width/9*3;
        radius = 20;
        xPosOfTheWalls = width;
        xSpeedOfTheWalls = -width/100; // Schnelligkeit
        heightOfTheSpace = height/3;
        heightOfTheTopWall = height /3;
        endOfTheGame = false;
        Bird bird = new Bird();
        bird.maxGeschwindigkeity = 5;
        bird.yPos = height/2;
        bird.yGeschwindigkeit = 0;
       }
     }
  } 
}

void ausgabe()  //Die Prozedur (Startscreen)
{
   background(0);
   
  if (anfang == false)
  {
      fill(255,0,0);
      textSize(25);
      text("Flappy Bird",90,30);    
      text("----------",85,40);
      text("Drücke 'a' um zu Spielen!",1,240);
      fill(0);
      noStroke();
    
    if (key == 'a')
    { 
        anfang = true;
        setup();
    }
  } 
}

/////////////////////////////////////


//QUELLENANGABEN:

// https://processing.org/examples/widthheight.html -> Für Höhe und Breite (Width and Height)
// https://processing.org/examples/functions.html -> Für Funktionen mit/ohne Parameterübergabe
// https://processing.org/reference/class.html -> Zum Anlegen einer Neuen Classe Namens 'Bird'
// http://www.farb-tabelle.de/de/farbtabelle.htm -> Für die Farbcodes  
// https://processing.org/examples/keyboard.html -> Für KeyPressed und Key Events auszulösen
// https://processing.org/examples/truefalse.html -> Für True und False
// https://processing.org/examples/loaddisplayimage.html -> Zum Anzeigen des Flappy Images

/////////////////////////////////////
