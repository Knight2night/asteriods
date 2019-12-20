class Spaceship extends Floater
{   
  public Spaceship() {
    corners = 3; 
      xCorners =  new int[corners]; 
     yCorners = new int[corners]; 
     
     xCorners[0] = -8;
     yCorners[0] = -8;

    xCorners[1] = 16;
    yCorners[1] = 0;
     
     xCorners[2] = -8;
     yCorners[2] = 8;


      myColor = color(255,255,255);   
      myCenterX = 200;
      myCenterY = 300;
      myDirectionX = 0;
      myDirectionY = 0;
     myPointDirection = 0;
  }

  public void hyperspace(){
    myCenterX = (int) (Math.random()*600)+1;
    myCenterY = (int) (Math.random()*600)+1;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = (int) (Math.random()*360)+1;
  }

  public float getX(){
    return (float) myCenterX;
  }

  public float getY(){
    return (float) myCenterY;
  }

  public void restart(){
    myCenterX = 300;
    myCenterY = 300;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
  }
}
