Spaceship rocket;
Star [] milkyWay;
boolean w, a, s, d;
public void setup() 
{
  w = false;
  a = false;
  s = false;
  d = false;
  size(600, 600); 
  rocket = new Spaceship();
  milkyWay = new Star[400];
  for (int i =0; i < milkyWay.length; i++)
  {
    milkyWay[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i<milkyWay.length; i++)
  {
    milkyWay[i].show();
  }
  rocket.show();
  rocket.move();
  if (w) {
    rocket.accelerate(1);
  }
  if (a) {
    rocket.turn(-1);
  }
  if (s) {
    rocket.accelerate(-1);
  }
  if (d) {
    rocket.turn(1);
  }
}
public void keyPressed()
{
  if (key == 'h')
  {
    rocket.setXspeed(0);
    rocket.setYspeed(0);
    rocket.setX(Math.random()*width);
    rocket.setY(Math.random()*height);
    rocket.setDirection(Math.random()*360);
  }
  if (key == 'w')
  {
    w = true;
  }
  if (key == 's')
  {
    s = true;
  }
  if (key == 'a')
  {
    a = true;
  }
  if (key == 'd')
  {
    d = true;
  }
}
public void keyReleased()
{  
  if (key == 'w')
  {
    w = false;
  }
  if (key == 's')
  {
    s = false;
  }
  if (key == 'a')
  {
    a = false;
  }
  if (key == 'd')
  {
    d = false;
  }
}
