Spaceship ship;
Star[] stars = new Star[50];
ArrayList <Asteroid> asteroid = new ArrayList <Asteroid>();
public void setup() 
{
  size(400, 400);
  for(int i = 0; i<stars.length; i++){
    stars[i] = new Star();
  }
  ship = new Spaceship();
  
  
   for(int i = 0; i < 30; i++){
   asteroid.add(new Asteroid());
   asteroid.get(i).setDirectionX(Math.random()*5-2);
   asteroid.get(i).setDirectionY(Math.random()*5-2);
   asteroid.get(i).setPointDirection((int)(Math.random()*360));
   asteroid.get(i).myColor = 169;
  }
}

public void draw() 
{
  background(0);
  ship.move();
  for(int i = 0; i<stars.length; i++){
    stars[i].show();
    ship.show();
}

 for(int i = 0; i < asteroid.size(); i++){
   asteroid.get(i).show();
   asteroid.get(i).move();
     if(dist(ship.getX(),ship.getY(), asteroid.get(i).getX(), asteroid.get(i).getY()) <= 23){
      asteroid.remove(i);
 }
 }
}

public void keyPressed(){
  if(key == 'd'){
    ship.turn(10);
  }
  if(key == 'a'){
    ship.turn(-10);
  }
  if(key == 'w'){
    ship.accelerate(1.0);
  }
  if(key == 's'){
    ship.setDirectionX(0);
    ship.setDirectionY(0);
    ship.setX((int)(Math.random()*400));
    ship.setY((int)(Math.random()*400));
  }
}
