public class Bird  // Erstellung einer neuen Klasse Namens "Bird"
{
  float maxGeschwindigkeity = 5;    //maximale Geschwindigkeit des Vogels(wie schnell er maximal werden kann)
  float yPos = height/2;            //yPos des Vogels
  float yGeschwindigkeit = 0;       //yGeschwindigkeit des Vogels
  
  void showTheBird()  //Prozedur zum Darstellen des Vogels
  {
        //Für die Farbe des Vogels
        
        while (punkte < 10)
        {
             fill(0,0,200); 
             ellipse(xPosOfTheBird,yPos,radius,radius);  
             return;
        }
        
        while (punkte < 20)
        {
             fill(69,139,116);
             ellipse(xPosOfTheBird,yPos,radius,radius);  
             return;
        }
        
        while (punkte < 30)
        {
             fill(139,35,35);
             ellipse(xPosOfTheBird,yPos,radius,radius);  
             return;
        }
        
        while (punkte < 40)
        {
             fill(0,0,0);
             ellipse(xPosOfTheBird,yPos,radius,radius);  
             return;
        }
        
         while (punkte < 50)
        {
             fill(47,79,79);
             ellipse(xPosOfTheBird,yPos,radius,radius);  
             return;
        }
        
         while (punkte < 60)
        {
             fill(151,255,255);
             ellipse(xPosOfTheBird,yPos,radius,radius);  
             return;
        }

        if (punkte == 60)
        {
             fill(0,0,200); 
             ellipse(xPosOfTheBird,yPos,radius,radius);  
             return;
        }      
}
  
  void schwerkraftEffekt() // Anzeigeeffekt des Vogels
  {
    if (yGeschwindigkeit < maxGeschwindigkeity)
    {
          yGeschwindigkeit += 0.3;    // Die yGeschwindigkeit wird jeweils immer um 0,3 erhöht 
    }
    
    if (yPos < height - radius || yGeschwindigkeit < maxGeschwindigkeity & yPos > radius|| yGeschwindigkeit > 0)
    {
          yPos +=yGeschwindigkeit; 
    }
  }
  
    void jump()  // Funktion jump zum Springen
    {
          yGeschwindigkeit = -4; // Schnelligkeit zum springen
    }
  
    float getY()
    {
       return yPos; // Für die Position des Vogels
    }
}  
