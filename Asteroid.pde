class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid(){
		corners = (int)(Math.random()*4)+6;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	for(int i = 0; i<corners;i++){
    		xCorners[i] = (int)(Math.random()*80)-40;
     		yCorners[i] = (int)(Math.random()*80)-40;
    	}
     	rotSpeed = (int)(Math.random()*26);
      myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      myCenterX = (int)(Math.random()*800);
      myCenterY = (int)(Math.random()*800);
      myDirectionX = (int)(Math.random()*10)-5;
      myDirectionY = (int)(Math.random()*10)-5;
	}
	public void move(){
		turn(rotSpeed);

		super.move();

	}
}
