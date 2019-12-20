class Asteroid extends Floater
{
  private int rotSpeed;

  public Asteroid(){
    rotSpeed = (int) (Math.random()*9)-4;
    corners = 4;

    xCorners = new int[corners];
    yCorners = new int[corners];
    
    xCorners[0] = 50;
     yCorners[0] = 40;
     
     xCorners[1] = 20;
     yCorners[1] = 30;
     
     xCorners[2] = 30;
     yCorners[2] = 20;
     
    xCorners[2] = 20;
     yCorners[2] = 40;
     
     myColor = color(51,51,51);
     myCenterX = (int) (Math.random()*601);
      myCenterY = (int) (Math.random()*601);
      myDirectionX = (int) (Math.random()*5)-2;
      myDirectionY = (int) (Math.random()*5)-2;
     myPointDirection = (int) (Math.random()*361);
  }

  public float getX(){
    return (float) myCenterX;
  }

  public float getY(){
    return (float) myCenterY;
  }

  public void move(){
    turn(rotSpeed);
    super.move();
  }
}