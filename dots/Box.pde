class Box{
  int x,y, size, csize;
  boolean[] ons;
  Box(int x0, int y0, int size0){
    csize = 10;
    x = x0;
    y = y0;
    size = size0;
    ons = new boolean[4];
    
    for (int i = 0; i<ons.length; i++){
      ons[i] = true;
    }
  }
  
  void display(){
    fill(0);
    circle(x,y,csize);
    circle(x+size,y,csize);
    circle(x,y+size,csize);
    circle(x+size,y+size,csize);
    for (int i = 0; i < ons.length; i++){
      if(ons[i]){
        if(i == 0){
          line(x,y,x+size, y);
        }
        if(i == 1){
          line(x+size,y, x+size,y+size);
        }
        if(i == 2){
          line(x+size,y+size,x,y+size);
        }
        if(i == 3){
          line(x,y+size,x,y);
        }
      }
    }
  }
}
