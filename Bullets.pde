class Bullets extends Floater
{
   private double dRadians;
   
   public Bullets()
  {
     myCenterX = hello.getX();
     myCenterY = hello.getY();
     myPointDirection = hello.getPointDirection();
     dRadians = myPointDirection*(Math.PI/180);
     myDirectionX = 5*Math.cos(dRadians) + hello.getDirectionX();
     myDirectionY = 5*Math.sin(dRadians) + hello.getDirectionY();
  }
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
      return myDirectionX;
    }   
    public void setDirectionY(double y)
    {
      myDirectionY = y;
    }   
    public double getDirectionY()
    {
      return myDirectionY;
    }   
    public void setPointDirection(int degrees)
    {
      myPointDirection = degrees;
    }   
    public double getPointDirection()
    {
      return myPointDirection;
    } 
    
    public void show()
    {
      fill(255, 255, 0);
      noStroke();
      ellipse((float)myCenterX+3, (float)myCenterY, 3, 3);
    }
}