class Bullet extends Floater 
{
  private float dRadians;

  public Bullet(Spaceship theShip){
    myCenterX = theShip.myCenterX;
    myCenterY = theShip.myCenterY;
    dRadians = (float) (theShip.myPointDirection * (Math.PI/180));
    myPointDirection = theShip.myPointDirection;
    myDirectionX = 10 * Math.cos(dRadians) + theShip.myDirectionX;
    myDirectionY = 10 * Math.sin(dRadians) + theShip.myDirectionY;
  }
  public void show(){
    fill(102,255,102);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 20, 20);
  }
  public void move(){
    myCenterX += myDirectionX;    
      myCenterY += myDirectionY;       
  }

  public float getX(){
      return (float) myCenterX;
   }

    public float getY(){
      return (float) myCenterY;
    }
}