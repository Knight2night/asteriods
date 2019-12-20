 //your variable declarations here
Spaceship tom;
ArrayList <Asteroid> gray;
ArrayList <Bullet> shot;
Star[] shine = new Star[300];
boolean wIsPressed = false;
boolean dIsPressed = false;
boolean aIsPressed = false;
boolean qIsPressed = false;
int health = 100;
int score = 0;

public void setup() 
{
  background(0);
  size(600,600);
  tom = new Spaceship();
  for(int i = 0; i < shine.length; i++){
    shine[i] = new Star();
  }
  shot = new ArrayList <Bullet> ();
  gray = new ArrayList <Asteroid> ();
  for(int i = 0; i < 15; i++){
    gray.add(new Asteroid());
  }
}

public void draw() 
{  
  if(health <= 0){
      fill(255);
    textSize(100);
    textAlign(CENTER);
    text("Game Over", 280, 260);
      return;
    }

  fill(0);
  rect(0,0,600,600);
  for(int i = 0; i < shine.length; i++){
      shine[i].show();
    }
    for(int i = 0; i < gray.size(); i++){
      gray.get(i).show();
      gray.get(i).move();
      if(dist(gray.get(i).getX(), gray.get(i).getY(), tom.getX(), tom.getY() ) < 18){
        health = health - 3;
      }
    }
  
  tom.show();
  tom.move();
  if(wIsPressed == true){
    tom.accelerate(0.10);
  }
  if(aIsPressed == true){
    tom.turn(-5);
  }
  if(dIsPressed == true){
    tom.turn(5);
  }
  if(wIsPressed == true && aIsPressed == true){
    tom.accelerate(0.10);
    tom.turn(-3);
  }
  if(wIsPressed == true && dIsPressed == true){
    tom.accelerate(0.10);
    tom.turn(3);
  }
  for(int i = 0; i < shot.size(); i++){
    shot.get(i).show();
    shot.get(i).move();

  }

  for(int j = 0; j < gray.size(); j++){
    for(int i = 0; i < shot.size(); i++){
      if(dist(gray.get(j).getX(), gray.get(j).getY(),shot.get(i).getX(), shot.get(i).getY() ) < 18){
          gray.remove(j);
          shot.remove(i);
            score++;
            break;
        }
    }
  }
  fill(155);
  textSize(30);
  textAlign(CENTER);
  text("Score:" + score, 250, 30);
  text("Health:" + health,250, 100);
}

public void keyPressed(){
  if(key == 'w'){
    wIsPressed = true;
  }
  if(key == 'd'){
    dIsPressed = true;
  }
  if(key == 'a'){
    aIsPressed = true;
  }
  if(key == 'h'){
    tom.hyperspace();
  }
  if(key == ' '){
    shot.add(new Bullet(tom));
  }
  if(key == 'r'){
    health = 100;
    score = 0;
    tom.restart();
    for(int i = 0; i < gray.size();i++){
      gray.remove(i);
      i--;
    }
    for(int i = 0; i < 15; i++){
        gray.add(new Asteroid());
      }
 
    for(int i = 0; i < 250; i++){
        gray.add(new Asteroid());
      }
  }
}

public void keyReleased(){
  if(key == 'w'){
    wIsPressed = false;
  }
  if(key == 'd'){
    dIsPressed = false;
  }
  if(key == 'a'){
    aIsPressed = false;
  }
  if(key == 'q'){
    qIsPressed = false;
  }
}


