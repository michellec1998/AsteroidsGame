class Asteroid extends Floater{
  private int rotateSpeed;
  public Asteroid(){
    rotateSpeed = (int)(Math.random()*3)-1;
    //change color
    myColor = color(100);
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myDirectionX = Math.random()*3-1;
    myDirectionY = Math.random()*3-1;
    myPointDirection = Math.random()*360;
    corners = 4;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = -8;
    yCorners[0] = 8;
    xCorners[1] = 8; 
    yCorners[1] = 8;
    xCorners[2] = 8;
    yCorners[2] = -0;
    xCorners[3] = -8;
    yCorners[3] = -0;
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
  public void move(){
    rotate(rotateSpeed);
    super.move();
  }
}