Spaceship hello = new Spaceship();
Stars[] sparkles = new Stars[400];
ArrayList <Asteroid> rockList;
ArrayList <Bullets> pew;


public void settings() 
{
  size(500,500);
  
  rockList = new ArrayList <Asteroid>();
  
  for (int i = 0; i < 70; i++)
  {
  rockList.add(new Asteroid());
  }
  
  for (int a = 0; a < sparkles.length; a ++)
  {
    sparkles[a] = new Stars();
  }
  
  pew = new ArrayList <Bullets>();
  
}
public void draw() 
{
  background(0);
  hello.show();
  hello.move();
  
  for (int a = 0; a < sparkles.length; a ++)
  {
    sparkles[a].show();
  }
  for (int i = 0; i < rockList.size(); i++)
  {
    rockList.get(i).show();
    rockList.get(i).move();
    if (dist(hello.getX(), hello.getY(), rockList.get(i).getX(), rockList.get(i).getY()) <= 25)
    {
    rockList.remove(i);
    }
  }
  
  for (int i = 0; i < pew.size(); i++)
  {
  pew.get(i).show();
  pew.get(i).move();
  if (pew.get(i).getX() > 500 || pew.get(i).getX() < 0 || pew.get(i).getY() > 500 || pew.get(i).getY() < 0)
    {
    pew.remove(i);
    }
  }
  
  for (int i = 0; i < rockList.size(); i++)
  {
    for (int j = 0; j < pew.size(); j++)
    {
        if (dist(pew.get(j).getX(), pew.get(j).getY(), rockList.get(i).getX(), rockList.get(i).getY()) <= 25)
        {
        rockList.remove(i);
        pew.remove(j);
        break;
        }
    }
  }

}

//press keys to hyperspace, stay stationary to shoot
public void keyPressed()
{
  //to rotate right -- clockwise 
  if (keyCode == 39)
  {
    hello.myPointDirection = hello.myPointDirection +10;
  }
  //to rotate left -- counter clockwise
  if (keyCode == 37)
  {
     hello.myPointDirection = hello.myPointDirection -10;
  }
  //to go foward from whereever - up key
  if (keyCode == 38)
  {
    hello.accelerate(.05);
  }
  //to go back from whereever - down key
  if (keyCode == 40)
  {
    hello.accelerate(.05);
  }
  //hyperspace using the h key
  if (keyCode == 72)
  {
    hello.myCenterY = (int)(Math.random()*495);
    hello.myCenterX = (int)(Math.random()*495);
    hello.myPointDirection = (int)(Math.random()*495);
  }
  if (keyCode == 32)
  {
    pew.add(new Bullets());
  }
  
}  




  