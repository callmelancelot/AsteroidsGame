//your variable declarations here
Spaceship galactica;
Star[]joe;
public void setup() 
{
	galactica = new Spaceship();
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
}
public void keyPressed(){
	if(key == 'd'){
		galactica.rotate(-15); 
	}
	if(key == 'a'){
		galactica.rotate(15);
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

