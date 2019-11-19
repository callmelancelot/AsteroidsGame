class Spaceship extends Floater  
{   
  public Spaceship(){
     corners = 3;
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = -8;
     yCorners[0] = -8;
     xCorners[1] = 16;
     yCorners[1] = 0;
     xCorners[2] = -8;
     yCorners[2] = 8;
     myColor = 255;
     myCenterX = 400;
     myCenterY = 400;
  }
  public void setX(int x){
    myCenterX = x;
  }
  public void setY(int y){
    myCenterY = y;
  }
  public void setDirectionX(double x){
    myDirectionX = x;
  }
  public void setDirectionY(double y){
    myDirectionY = y;
  }
  public void setPointDirection(int y){
    myPointDirection = y;
  }


}
