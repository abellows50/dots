class Board {
  Box[][] boxes;
  int bw, bh, spacing;
  Board(int bw1, int bh1,int size){
    bw = bw1;
    bh = bh1;
    spacing = size/bw;
    boxes = new Box[bh][bw];
    
    for (int i = 0; i < boxes.length; i++){
      for (int j = 0; j< boxes[i].length; j++){
        boxes[i][j] = new Box(i*spacing, j*spacing,spacing);
      }
    }
  }
  
  void display(){
    for (int i = 0; i < boxes.length; i++){
      for (int j = 0; j< boxes[i].length; j++){
        boxes[i][j].display();
      }
    }    
  }
}
