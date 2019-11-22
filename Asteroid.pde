class Asteroid extends Floater
{
	private int rotSpeed;

	public Asteroid(){
		corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 40;
    yCorners[0] = 0;
    xCorners[1] = (int)(Math.random()*40);
    yCorners[1] = (int)(Math.random()*20)+20;
    xCorners[2] = (int)(Math.random()*40)-40;
    yCorners[2] = (int)(Math.random()*20)+20;
    xCorners[3] = (int)(Math.random()*40)-40;
    yCorners[3] = 0;
    xCorners[4] = (int)(Math.random()*40)-40;
    yCorners[4] = (int)(Math.random()*20)-20;
    xCorners[5] = 40;
    yCorners[5] = (int)(Math.random()*20)-20;
    rotSpeed = (int)(Math.random()*6)-3;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    myDirectionX = (int)(Math.random()*2)-1;
    myDirectionY = (int)(Math.random()*2)-1;
	}
	public void move(){
		turn(rotSpeed);
		super.move();
	}
}
