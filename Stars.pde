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