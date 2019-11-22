//your variable declarations here
Spaceship galactica;
ArrayList <Asteroid> doe;
Star[]joe;
public void setup() 
{
	galactica = new Spaceship();
	doe = new ArrayList<Asteroid>();
  for(int i = 0; i <50; i++){
    doe.add(new Asteroid());
  }
	size(800,800);
	joe = new Star[200];
	for(int i = 0; i <joe.length; i++){
		joe[i] = new Star();
	}
}
public void draw() 
{
	background(0);
	for(int i = 0; i <200; i++){
		joe[i].show();
	}
	galactica.move();
	galactica.show();
  for(int i = 0; i <doe.size(); i++){
    doe.get(i).move();
    doe.get(i).show();
    int x = (int)dist((float)doe.get(i).myCenterX, (float)doe.get(i).myCenterY, (float)galactica.myCenterX, (float)galactica.myCenterY);
    if(x<=20){
      doe.remove(i);
      doe.add(new Asteroid());
    }
    
  }
}
public void keyPressed(){
	if(key == 'd'){
		galactica.turn(-15); 
	}
	if(key == 'a'){
		galactica.turn(15);
	}
	if(key == 'w'){
		galactica.accelerate(0.1);
	}
	if(key == 's'){
		galactica.accelerate(-0.1);
	}
	if(key == 'f'){
		galactica.setX((int)(Math.random()*800));
		galactica.setY((int)(Math.random()*800));
		galactica.setDirectionX(0.0);
		galactica.setDirectionY(0.0);
		galactica.setPointDirection((int)(Math.random()*360));
	}
}
