class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid(){
		corners = 4;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
     	xCorners[0] = -8;
     	yCorners[0] = -8;
     	xCorners[1] = 16;
     	yCorners[1] = 0;
     	xCorners[2] = -8;
     	yCorners[2] = 8;
     	xCorners[3] = -16;
     	yCorners[3] = 0;
     	rotSpeed = (int)Math.random();
      myColor = 255;
      myCenterX = 300;
      myCenterY = 300;
	}
	public void move(){
		turn(rotSpeed);
		super.move();

	}
}
