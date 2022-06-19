
import peasy.*;

PeasyCam cam;


void printFace(Face2 face){
  
//print faces     
  for(int i = 0;i < 3;i++){
      for(int j = 0;j < 3;j++){
      System.out.print(face.sideY[i][j] + " ");
      }
       System.out.println("");
  }

  for(int i = 0;i < 3;i++){
     for(int j0 = 0;j0 < 3;j0++){
         System.out.print(face.sideR[i][j0] + " ");
     }
      System.out.print("      ");
     for(int j1 = 0;j1 < 3;j1++){  
         System.out.print(face.sideG[i][j1] + " ");
    }
      System.out.print("      ");
    for(int j2 = 0;j2 < 3;j2++){
         System.out.print(face.sideO[i][j2] + " ");
    }
     System.out.print("      ");
    for(int j3 = 0;j3 < 3;j3++){
         System.out.print(face.sideB[i][j3] + " ");
    }
     System.out.println("");
  } 
  for(int i = 0;i < 3;i++){
      for(int j = 0;j < 3;j++){
      System.out.print(face.sideW[i][j] + " ");
      }
       System.out.println("");
  }
}


float speed = 0.1;
int dim = 3;
Cubie[] cube = new Cubie[dim*dim*dim];

Move[] allMoves = new Move[] {
  new Move(0, 1, 0, 1), 
  new Move(0, 1, 0, -1), 
  new Move(0, -1, 0, 1), 
  new Move(0, -1, 0, -1), 
  new Move(1, 0, 0, 1), 
  new Move(1, 0, 0, -1), 
  new Move(-1, 0, 0, 1), 
  new Move(-1, 0, 0, -1), 
  new Move(0, 0, 1, 1), 
  new Move(0, 0, 1, -1), 
  new Move(0, 0, -1, 1), 
  new Move(0, 0, -1, -1) 
};

ArrayList<Move> sequence = new ArrayList<Move>();
int counter = 0;

boolean started = false;

Move currentMove;

void setup() {
  size(600, 600, P3D);
  //fullScreen(P3D);
  cam = new PeasyCam(this, 400);
  int index = 0;
  for (int x = -1; x <= 1; x++) {
    for (int y = -1; y <= 1; y++) {
      for (int z = -1; z <= 1; z++) {
        PMatrix3D matrix = new PMatrix3D();
        matrix.translate(x, y, z);
        cube[index] = new Cubie(matrix, x, y, z);
        index++;
      }
    }
  }

ArrayList<Integer> disorderDirCount = new ArrayList<Integer>();

ArrayList<Integer> solveDirCount = new ArrayList<Integer>();

  Face2 face2 = new Face2();
  
  for (int i = 0; i < 20; i++) {
    int r = int(random(allMoves.length));
    Move m = allMoves[r];
    disorderDirCount.add(r);
    sequence.add(m);
  }


//disordering
  // int[] r = {9}; 
  //for (int i = 0; i < r.length; i++){
  //Move m = allMoves[r[i]];
  //disorderDirCount.add(r[i]);
  //sequence.add(m);
  //}
  
  for(int i = 0; i < disorderDirCount.size();i++){
     face2.moveDir(disorderDirCount.get(i));
     printFace(face2);
  }
  
  
  //solving
  int r2[];
  r2 = face2.makingCross();
  System.out.println("r2 sequence" + r2);
  for (int i = 0; i < r2.length; i++){
  Move m = allMoves[r2[i]];
  solveDirCount.add(r2[i]);
  sequence.add(m);
  }
  
  for(int i = 0; i < solveDirCount.size();i++){
     //face2.moveDir(solveDirCount.get(i));
     printFace(face2);
  }
  
  
  
  System.out.println(solveDirCount);

  currentMove = sequence.get(counter);

  //for (int i = sequence.size()-1; i >= 0; i--) {
  //  Move nextMove = sequence.get(i).copy();
  //  nextMove.reverse();
  //  sequence.add(nextMove);
  //}

  currentMove.start();
  
  //for(int i = 0; i < moveDirCount.size();i++){
  //   face2.moveDir(moveDirCount.get(i));
  //   printFace(face2);
  //}
  
  
}
 

void draw() {
  background(100); 

  cam.beginHUD();
  fill(255);
  textSize(32);
  text(counter, 100, 100);
  cam.endHUD();

  rotateX(-0.5);
  rotateY(0.4);
  rotateZ(0.1);



  currentMove.update();
  if (currentMove.finished()) {
    if (counter < sequence.size()-1) {
      counter++;
      currentMove = sequence.get(counter);
      currentMove.start();
    }
  }


  scale(60);
  for (int i = 0; i < cube.length; i++) {
    push();
    if (abs(cube[i].z) > 0 && cube[i].z == currentMove.z) {
      rotateZ(currentMove.angle);
    } else if (abs(cube[i].x) > 0 && cube[i].x == currentMove.x) {
      rotateX(currentMove.angle);
    } else if (abs(cube[i].y) > 0 && cube[i].y ==currentMove.y) {
      rotateY(-currentMove.angle);
    }   
    cube[i].show();
    pop();
  }
}
