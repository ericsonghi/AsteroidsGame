class distantStars{
    private double myX, myY, mySize;
    private int myColor;
    
    public distantStars(){
      myX = Math.random()*750;
      myY = Math.random()*750;
      mySize = (int)(Math.random()*5 + 3);
      myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    }
    
    public double getX(){return myX;}
    public double getY(){return myY;}
    public double getSize(){return mySize;}
    public int getColor(){return myColor;}
    public void setX(double x){myX = x;}
    public void setY(double y){myY = y;}
    public void setSize(double Size){mySize = Size;}
    public void setColor(int Color){myColor = Color;}
  }
