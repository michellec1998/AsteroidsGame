
Spaceship hello = new Spaceship();
Stars[] sparkles = new Stars[400];
Rocks[] boom = new Rocks[200];
//Bullets pew = new Bullets();
/*
if (keycode == 32)
{
  Bullets pew = new Bullets;
  
}
*/

public void settings() 
{
  size(500,500);

  for (int a = 0; a < sparkles.length; a ++)
  {
    sparkles[a] = new Stars();
  }
  for (int i = 0; i < boom.length; i ++)
  {
    boom[i] = new Rocks();
  }

}
public void draw() 
{
  background(0);
  hello.show();

  for (int a = 0; a < sparkles.length; a ++)
  {
    sparkles[a].show();
  }
  for (int i = 0; i < boom.length; i ++)
  {
    boom[i].show();
    boom[i].move();
  }
  /*to remove the asteriod when shot at
    for(int i= 0.....)
    distance(ship.getx, ?, ?, ?)
  remove asteroids[i] */

}

class Spaceship extends Floater  
{
    public int corners;
    public int[] xCorners;
    public int[] yCorners;
    public int myColor;
    public double myCenterX, myCenterY;
    public double myDirectionX, myDirectionY;
    public double myPointDirection;
    
    public void setX(int x)
   {
     myCenterX = x;
   }
   public int getX()
   {
     return (int)myCenterX;
   }
    public void setY(int y)
   {
     myCenterY = y;
   }
   public int getY()
   {
     return (int)myCenterY;
   }
   public void setDirectionX(double x)
   {
     myDirectionX = x;
   }
   public double getDirectionX()  
   {
     return (double)myDirectionX;
   }
   public void setDirectionY(double y)
   {
     myDirectionY = y;
   }
   public double getDirectionY()
  {
    return (double)myDirectionY;
  }
  public void setPointDirection(int degrees)
  {
    myPointDirection = degrees;
  }
  public double getPointDirection()
  {
    return (double)myPointDirection;
  }

   public Spaceship()
  {
    myCenterX = 250;
    myCenterY = 250;
    myDirectionX = 90;
    myDirectionY = 90;
    myPointDirection = 100;
    
    corners = 3;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
  }
  
  public void show()
  {
    noFill();
    strokeWeight(3);
    stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    
    double dRadians = myPointDirection*(Math.PI/180);                 
    int xRotatedTranslated, yRotatedTranslated;    
    beginShape();         
    for(int nI = 0; nI < corners; nI++)    
    {     
      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
    }   
    endShape(CLOSE);  
  }  

}
//press keys to hyperspace, stay stationary to shoot
public void keyPressed()
{
  //to rotate right -- clockwise 
  if (keyCode == 39)
  {
    hello.myPointDirection = hello.myPointDirection +8;
  }
  //to rotate left -- counter clockwise
  if (keyCode == 37)
  {
     hello.myPointDirection = hello.myPointDirection -8;
  }
  //to go foward from whereever 
  /* if (keyCode == 38)
  {
    hello.myCenterX = hello.myPointDirection + PI/2;
    hello.myCenterY = hello.myPointDirection + PI/2;
  }
  //to go back from whereever
  if (keyCode == 40)
  {
    hello.myCenterY = hello.myPointDirection;
    hello.myCenterX = hello.myPointDirection;
  } */
  //hyperspace using the h key
  if (keyCode == 72)
  {
    hello.myCenterY = (int)(Math.random()*495);
    hello.myCenterX = (int)(Math.random()*495);
    hello.myPointDirection = (int)(Math.random()*495);
  }
  //the spacebar to shoot lasers
  /* if (keycode == 32)
  {
     = ;
  } */

}  

class Stars
{
  private int myX, myY;

  public Stars()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  public void show()
    {
      point(myX, myY);
      strokeWeight(2);
      stroke(250);
    }
}
///fix this class
class Rocks //extends Floater
{
  private double myX, myY;
  private double dAngle, dSpeed;
 
  public Rocks()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    dAngle =  PI/2 *Math.random();
    dSpeed = (Math.random() * 2) -1;
    // have them continuously come in from the sides and towards the ship
    //myX = (int)(Math.random()*500);
    //myY = (int)(Math.random()*500);
    //have to fix the variables of the asteroids
    //dAngle = PI * 2*  Math.random();
    //dSpeed = (Math.random() * 3) -2;
  }
  //fix this code
  //move towards the spaceship

  public void move()
  {
    myX = myX + Math.cos(dAngle)*dSpeed;
    myY = myY + Math.sin(dAngle)* dSpeed;
  } 
  public void show()
  {
    fill(80);
    strokeWeight(3);
    stroke(0);
    ellipse((float)myX, (float)myY, 20, 20);
  }
}

//fix this class
/* class Bullets
{
  private int myX, myY;

  public Bullets()
  {
    myX = hello.getX;
    myY = hello.getY;
  }

  public void show()
  {
    stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    strokeWeight(2);
    point(myX, myY);
  }
  public void move()
  {
    //have the bullets got towards the asteroids
    if (keycode == 32)
    {
      myX = myX + boom.getX;
      myY = myY + boom.getY;
    }

  }
}  */

  
//FLOATER CLASS - DO NOT TOUCH  
abstract class Floater //Do NOT modify the Floater class! Make changes in the SpaceShip class 
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    
  abstract public void setX(int x);  
  abstract public int getX();   
  abstract public void setY(int y);   
  abstract public int getY();   
  abstract public void setDirectionX(double x);   
  abstract public double getDirectionX();   
  abstract public void setDirectionY(double y);   
  abstract public double getDirectionY();   
  abstract public void setPointDirection(int degrees);   
  abstract public double getPointDirection(); 

  //Accelerates the floater in the direction it is pointing (myPointDirection)   
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myDirectionX += ((dAmount) * Math.cos(dRadians));    
    myDirectionY += ((dAmount) * Math.sin(dRadians));       
  }   
  public void rotate (int nDegreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=nDegreesOfRotation;   
  }   
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    }   
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    //convert degrees to radians for sin and cos         
    double dRadians = myPointDirection*(Math.PI/180);                 
    int xRotatedTranslated, yRotatedTranslated;    
    beginShape();         
    for(int nI = 0; nI < corners; nI++)    
    {     
      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
    }   
    endShape(CLOSE);  
  }   
} 
//floater class