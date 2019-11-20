//your variable declarations here
Spaceship galactica;
Asteroid[] doe;
Star[]joe;
public void setup() 
{
	galactica = new Spaceship();
	doe = new Asteroid[20];
for(int i = 0; i <doe.length; i++){
    doe[i] = new Asteroid();
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
  for(int i = 0; i <20; i++){
    doe[i].move();
    doe[i].show();
    
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
		galactica.accelerate(0.5);
	}
	if(key == 's'){
		galactica.accelerate(-0.5);
	}
	if(key == 'f'){
		galactica.setX((int)(Math.random()*800));
		galactica.setY((int)(Math.random()*800));
		galactica.setDirectionX(0.0);
		galactica.setDirectionY(0.0);
		galactica.setPointDirection((int)(Math.random()*360));
	}
}
