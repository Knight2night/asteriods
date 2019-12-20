class Star //note that this class does NOT extend Floater
{
  private int myX, myY;

  public Star(){
    myX = (int) (Math.random()*800)+1;
    myY = (int) (Math.random()*800)+1;
  }

  public void show(){
    fill(120);
    ellipse(myX, myY, 4,3);
  }
}
