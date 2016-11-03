SpaceShip profx = new SpaceShip();
SmallStars[] smalls = new SmallStars[];
BigStars[] tubs = new BigStars[];
Asteroids[] bold = new Asteroids[];

public void setup() 
{
  size (500, 500);

  for (int j = 0; j < bold.length; j ++)
  {
    
  }
}
public void draw() 
{
  background (0);

  profx.show();
  profx.move();

  for(int a = 0; a < smalls.length; a ++)
  {
    smalls.show();
  }

  for (int i = 0; i < tubs.length; i ++)
  {
    tubs.show();
  }
}
class SpaceShip extends Floater  
{   
    private int corners;
    private int[] xCorners;
    private int[] yCorners;
    public int myColor;
    public double myCenterX, myCenterY;
    public double myDirectionX, myDirectionY;
    public double myPointDirection;

    public void setX(int x)
      {
        myCenterX = x;
      }
      public void setY(int y)
      {
        myCenterY = y;
      }
      public int getX()
      {
        return (int)myCenterX;
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
        return (double)x;
      }   
      public void setDirectionY(double y) 
      {
        myDirectionY = y;
      }  
      public double getDirectionY()
      {
        return (double)y;
      }   
      public void setPointDirection(int degrees)
      {
        myPointDirection = degrees;
      }   
      public double getPointDirection()
      {
        return (int)degrees;
      }

  public SpaceShip()
    {
        corners = 3;
        xCorners = new corners;
        yCorners = new corners;
        xCorners[0] = -8;
        yCorners[0] = -8;
        xCorners[1] = 16;
        yCorners[1] = 0;
        xCorners[2] = -8;
        yCorners[2] = 8;

      myCenterX = 250;
      myCenterY = 250;
      myDirectionX = 0;
      myDirectionY = 0;
      myPointDirection = 0;

    }
      
      public void move()
      {
        myCenterX = myCenterX + myDirectionX;
        myCenterY = myCenterY + myDirectionY;

        if (myCenterX > width)
        {
          myCenterX = 0;
        }
        else if (myCenterX < 0)
        {
          myCenterX = width;
        }
        if (myCenterY > height)
        {
          myCenterY = 0;
        }
        else if (myCenterY < 0)
        {
          myCenterY = height;
        }

      }

      public void show()
      {
        noFill();
        strokeWeight(10);
        stroke((int)Math.random()*255), (int)Math.random()*255), (int)Math.random()*255);
      }

       
    
    }
    
class SmallStars
{
  private int myX, myY;

  public SmallStars()
  {
    myX = x;
    myy = y;
  }
  public void show()
  {
    myX = (int)Math.random()*250;
    myY = (int)Math.random()*250;
    point(myX, myY);
    strokeWeight(4);
    stroke(250);
  }
}
class BigStars
{
  private int myX, myY;

  public BigStars()
  {
    myX = x;
    myY = y;
  }
  public void show()
  {
    myX = (int)Math.random()*250;
    myY = (int)Math.random()*250;
    point (myX, myY);
    strokeweight(10);
    stroke(250);
  }
}

class Asteroids
{
  private int myX, myY;
  private double dAngle, dSpeed;
  public Asteroids()
  {
    myX = x;
    myY = y;
    dAngle =  PI *2 *Math.random();
    dSpeed = (Math.random() * 5) -2;
  } 
  public void move()
  {
    myX = myX + Math.cos(dAngle)*dSpeed;
    myY = myY + Math.sin(dAngle)* dSpeed;
  }
  public void show()
  {
    rect(myX, myY, 10, 10);
    fill(100);
    strokeWeight(3);
    stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  
    
}
//FLOATER CLASS BELOW DO NOT TOUCH
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

