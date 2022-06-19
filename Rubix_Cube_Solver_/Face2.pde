
class Face2{
  
  //String[][] sideG = {{"green00 ","green01 ", "green02 "},
  //                    {"green10 ","green11 ", "green12 "},
  //                    {"green20 ","green21 ", "green22 "}};
    
  //String[][] sideB = {{"blue00  ", "blue01  ", "blue02  "},
  //                    {"blue10  ", "blue11  ", "blue12  "},
  //                    {"blue20  ", "blue21  ", "blue22  "}};
                      
  //String[][] sideY = {{"yellow00", "yellow01", "yellow02"},
  //                    {"yellow10", "yellow11", "yellow12"},
  //                    {"yellow20", "yellow21", "yellow22"}};
                      
  //String[][] sideW = {{"white00 ", "white01 ", "white02 "},
  //                    {"white10 ", "white11 ", "white12 "},
  //                    {"white20 ", "white21 ", "white22 "}};
                      
  //String[][] sideO = {{"orange00", "orange01", "orange02"},
  //                    {"orange10", "orange11", "orange12"},
  //                    {"orange20", "orange21", "orange22"}};
                      
  //String[][] sideR = {{"red00   ", "red01   ", "red02   "},
  //                    {"red10   ", "red11   ", "red12   "},
  //                    {"red20   ", "red21   ", "red22   "}};
                      
                        
  String[][] sideG = {{"green ","green ", "green "},
                      {"green ","green ", "green "},
                      {"green ","green ", "green "}};
    
  String[][] sideB = {{"blue  ", "blue  ", "blue  "},
                      {"blue  ", "blue  ", "blue  "},
                      {"blue  ", "blue  ", "blue  "}};
                     
  String[][] sideY = {{"yellow", "yellow", "yellow"},
                      {"yellow", "yellow", "yellow"},
                      {"yellow", "yellow", "yellow"}};
                      
  String[][] sideW = {{"white ", "white ", "white "},
                      {"white ", "white ", "white "},
                      {"white ", "white ", "white "}};
                      
  String[][] sideO = {{"orange", "orange", "orange"},
                      {"orange", "orange", "orange"},
                      {"orange", "orange", "orange"}};
                      
  String[][] sideR = {{"red   ", "red   ", "red   "},
                      {"red   ", "red   ", "red   "},
                      {"red   ", "red   ", "red   "}};
                      
   String[][] sideTemp = {{"", "", ""},
                      {"", "", ""},
                      {"", "", ""}};
                      
   //String[][][] entireCube = {sideG, sideB, sideY, sideW, sideO, sideR};                  
                
  
  void moveDir(int num) {
    if(num == 0){
    for(int i = 0; i < 3;i++){
     sideTemp[2][i] = sideG[2][i];
     sideG[2][i] = sideO[2][i];
     sideO[2][i] = sideB[0][2-i];
     sideB[0][2-i] = sideR[2][i];
     sideR[2][i] = sideTemp[2][i];
     System.out.println("helloe");
    }
    String [][] localSideTemp = new String[3][3];
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           localSideTemp[i][j] = sideW[i][j];
       }
    }
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           sideW[i][j] = localSideTemp[j][2-i];
       }
    }
  }
  
   if(num == 1){
    for(int i = 0; i < 3;i++){
     sideTemp[2][i] = sideG[2][i];
     sideG[2][i] = sideR[2][i];
     sideR[2][i] = sideB[0][2-i];
     sideB[0][2-i] = sideO[2][i];
     sideO[2][i] = sideTemp[2][i];
     System.out.println("helloe");
    }
    
    String [][] localSideTemp = new String[3][3];
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           localSideTemp[i][j] = sideW[i][j];
       }
    }
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           sideW[i][j] = localSideTemp[2-j][i];
       }
    }
  }
  
  if(num == 2){
    for(int i = 0; i < 3;i++){
     sideTemp[0][i] = sideG[0][i];
     sideG[0][i] = sideO[0][i];
     sideO[0][i] = sideB[2][2-i];
     sideB[2][2-i] = sideR[0][i];
     sideR[0][i] = sideTemp[0][i];
     System.out.println("helloe");
    }
    
     String [][] localSideTemp = new String[3][3];
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           localSideTemp[i][j] = sideY[i][j];
       }
    }
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           sideY[i][j] = localSideTemp[2-j][i];
       }
    }
  }
  
   if(num == 3){
    for(int i = 0; i < 3;i++){
     sideTemp[0][i] = sideG[0][i];
     sideG[0][i] = sideR[0][i];
     sideR[0][i] = sideB[2][2-i];
     sideB[2][2-i] = sideO[0][i];
     sideO[0][i] = sideTemp[0][i];
     System.out.println("helloe");
    }
      String [][] localSideTemp = new String[3][3];
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           localSideTemp[i][j] = sideY[i][j];
       }
    }
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           sideY[i][j] = localSideTemp[j][2-i];
       }
    }
  }
    if(num == 4){
    for(int i = 0; i < 3;i++){
     sideTemp[i][2] = sideG[i][2];
     sideG[i][2] = sideW[i][2];
     sideW[i][2] = sideB[i][2];
     sideB[i][2] = sideY[i][2];
     sideY[i][2] = sideTemp[i][2];
     System.out.println("helloe");
     
    }
  String [][] localSideTemp = new String[3][3];
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           localSideTemp[i][j] = sideO[i][j];
       }
    }
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           sideO[i][j] = localSideTemp[2-j][i];
       }
    }
  }
  
   if(num == 5){
    for(int i = 0; i < 3;i++){
     sideTemp[i][2] = sideG[i][2];
     sideG[i][2] = sideY[i][2];
     sideY[i][2] = sideB[i][2];
     sideB[i][2] = sideW[i][2];
     sideW[i][2] = sideTemp[i][2];
     System.out.println("helloe");
    }
      String [][] localSideTemp = new String[3][3];
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           localSideTemp[i][j] = sideO[i][j];
       }
    }
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           sideO[i][j] = localSideTemp[j][2-i];
       }
    }
  }
  
   if(num == 6){
    for(int i = 0; i < 3;i++){
     sideTemp[i][0] = sideG[i][0];
     sideG[i][0] = sideW[i][0];
     sideW[i][0] = sideB[i][0];
     sideB[i][0] = sideY[i][0];
     sideY[i][0] = sideTemp[i][0];
     System.out.println("helloe");
    }
     String [][] localSideTemp = new String[3][3];
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           localSideTemp[i][j] = sideR[i][j];
       }
    }
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           sideR[i][j] = localSideTemp[j][2-i];
       }
    }
  }
  
   if(num == 7){
    for(int i = 0; i < 3;i++){
     sideTemp[i][0] = sideG[i][0];
     sideG[i][0] = sideY[i][0];
     sideY[i][0] = sideB[i][0];
     sideB[i][0] = sideW[i][0];
     sideW[i][0] = sideTemp[i][0];
     System.out.println("helloe");
    }
      String [][] localSideTemp = new String[3][3];
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           localSideTemp[i][j] = sideR[i][j];
       }
    }
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           sideR[i][j] = localSideTemp[2-j][i];
       }
    }
  }
    if(num == 8){
   String[][] sideTemp = new String[3][3];
      
    for(int i = 0; i < 3;i++){
      sideTemp[i][2] = sideR[2-i][2];
    }
    for(int i = 0; i < 3;i++){
      sideR[i][2] = sideW[0][i];
    }
     for(int i = 0; i < 3;i++){
       sideW[0][i] = sideO[2-i][0];
    }
     for(int i = 0; i < 3;i++){
        sideO[i][0] = sideY[2][i];
    }
     for(int i = 0; i < 3;i++){
        sideY[2][i] = sideTemp[i][2];
    }
     String [][] localSideTemp = new String[3][3];
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           localSideTemp[i][j] = sideG[i][j];
       }
    }
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           sideG[i][j] = localSideTemp[2-j][i];
       }
    }
    
  }
  
     if(num == 9){
   String[][] sideTemp = new String[3][3];
      
    for(int i = 0; i < 3;i++){
      sideTemp[i][2] =  sideY[2][i];
    }
    for(int i = 0; i < 3;i++){
      sideY[2][i] = sideO[i][0];
    }
     for(int i = 0; i < 3;i++){
       sideO[2-i][0] = sideW[0][i];
    }
     for(int i = 0; i < 3;i++){
        sideW[0][i] = sideR[i][2] ;
    }
     for(int i = 0; i < 3;i++){
        sideR[2-i][2] = sideTemp[i][2];
    }
     String [][] localSideTemp = new String[3][3];
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           localSideTemp[i][j] = sideG[i][j];
       }
    }
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           sideG[i][j] = localSideTemp[j][2-i];
       }
    }
  }
   if(num == 10){
   String[][] sideTemp = new String[3][3];
      
    for(int i = 0; i < 3;i++){
      sideTemp[i][0] = sideR[2-i][0];
    }
    for(int i = 0; i < 3;i++){
      sideR[i][0] = sideW[2][i];
    }
     for(int i = 0; i < 3;i++){
       sideW[2][i] = sideO[2-i][2];
    }
     for(int i = 0; i < 3;i++){
        sideO[i][2] = sideY[0][i];
    }
     for(int i = 0; i < 3;i++){
        sideY[0][i] = sideTemp[i][0];
    }
     String [][] localSideTemp = new String[3][3];
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           localSideTemp[i][j] = sideB[i][j];
       }
    }
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           sideB[i][j] = localSideTemp[j][2-i];
       }
    }}
    
        if(num == 11){
   String[][] sideTemp = new String[3][3];
      
    for(int i = 0; i < 3;i++){
      sideTemp[i][0] =  sideY[0][i];
    }
    for(int i = 0; i < 3;i++){
      sideY[0][i] = sideO[i][2];
    }
     for(int i = 0; i < 3;i++){
       sideO[2-i][2] = sideW[2][i];
    }
     for(int i = 0; i < 3;i++){
        sideW[2][i] = sideR[i][0] ;
    }
     for(int i = 0; i < 3;i++){
        sideR[2-i][0] = sideTemp[i][0];
    }
     String [][] localSideTemp = new String[3][3];
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           localSideTemp[i][j] = sideB[i][j];
       }
    }
    for(int i = 0; i < 3;i++){
       for(int j = 0; j < 3;j++){
           sideB[i][j] = localSideTemp[2-j][i];
       }
    }
  }
  }
  
  void unAlteredGreenChange(ArrayList<Integer> arr, int greenX, int greenY, int moveDirect){
    int turns = 0;
         while(sideG[greenX][greenY] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(moveDirect);
       arr.add(moveDirect);
       
       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns --;
       }
  }
  
  
  
   int[] makingCross(){
     ArrayList<Integer> arr = new ArrayList<Integer>();
     
       
    //while(!(sideG[1][0] == "green " && sideG[0][1] == "green "
    //     && sideG[1][2] == "green " && sideG[2][1] == "green "
    //     && sideR[1][2] == "red   " && sideO[1][0] == "orange"
    //     && sideW[0][1] == "white " && sideY[2][1] == "yellow")){     
      
      boolean sideGreen = true; 
      
      
      
      while(sideGreen == true){
         sideGreen = false;
         
    //case: lowerside
    
    if(sideB[0][1] == "green "){
      sideGreen = true;
      int turns = 0;
    while(sideG[2][1] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(0);
       arr.add(0);
       
       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns--;
      }
    }
  
   
     if(sideB[1][0] == "green "){
      sideGreen = true;
      int turns = 0;
    while(sideG[1][0] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(6);
       arr.add(6);
       
       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns--;
  }
    }
    
    if(sideB[1][2] == "green "){
      sideGreen = true;
      int turns = 0;
    while(sideG[1][2] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(4);
       arr.add(4);
       
       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns--;
  }
    }
      if(sideB[2][1] == "green "){
      sideGreen = true;
      int turns = 0;
    while(sideG[0][1] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(3);
       arr.add(3);
       
       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns--;
  }
    }
        
        
    //case: sideGreen: general 
   
    //caseYellow
    if(sideY[0][1] == "green ") {
      sideGreen = true;
      int turns = 0;
    while(sideG[0][1] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(2);
       arr.add(2);
       
       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns--;
       }
  }
  
  if(sideY[1][0] == "green ") {
          sideGreen = true;
      int turns = 0;
    while(sideG[0][1] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(2);
       moveDir(2);
       arr.add(2);
       arr.add(2);
       
       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns--;
       }
  }
  
   
  if(sideY[2][1] == "green ") {
          sideGreen = true;
      int turns = 0;
    while(sideG[0][1] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(3);
       arr.add(3);
       
       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns--;
       }
  }
   
   //case red
   
     if(sideR[1][0] == "green ") {
             sideGreen = true;
      int turns = 0;
    while(sideG[1][0] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(7);
       arr.add(7);
       
       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns--;
       }
  }
  
   if(sideR[2][1] == "green ") {
           sideGreen = true;
      int turns = 0;
    while(sideG[1][0] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(7);
       arr.add(7);
       moveDir(7);
       arr.add(7);
       
       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns--;
       }
  }
  
     if(sideR[1][2] == "green ") {
             sideGreen = true;
      int turns = 0;
    while(sideG[1][0] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(6);
       arr.add(6);
       
       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns--;
       }
  }
    
    //case white
    if(sideW[0][1] == "green ") {
            sideGreen = true;
      int turns = 0;
    while(sideG[2][1] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(0);
       arr.add(0);

       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns--;
       }
  }
  
  if(sideW[2][1] == "green ") {
          sideGreen = true;
      int turns = 0;
    while(sideG[2][1] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(1);
       arr.add(1);
       
       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns--;
       }
  }
  
    
  if(sideW[1][2] == "green ") {
          sideGreen = true;
      int turns = 0;
    while(sideG[2][1] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(1);
       arr.add(1);
        moveDir(1);
       arr.add(1);
       
       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns--;
       }
  }
  
    //case orange
     if(sideO[0][1] == "green ") {
             sideGreen = true;
      int turns = 0;
    while(sideG[1][2] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(5);
       arr.add(5);
       moveDir(5);
       arr.add(5);
       
       
       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns--;
       }
  }
  
      if(sideO[1][0] == "green ") {
              sideGreen = true;
      int turns = 0;
    while(sideG[1][2] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(5);
       arr.add(5);
       
       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns--;
       }
  }
  
    if(sideO[1][2] == "green ") {
            sideGreen = true;
      int turns = 0;
    while(sideG[1][2] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(4);
       arr.add(4);
       
       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns--;
       }
  }
     
     
     
     
     
     
     
     // case: sideGreen: specific
     //boolean sideGreen = true; 
     //while(sideGreen == true){
     //case: sideO[2][1]/////////////////////////////////////////////////////////////////////////
     
     //sideGreen = false;
     if(sideO[2][1] == "green "){
       sideGreen = true;
      System.out.println("is green");
       int turns = 0;
       
       String otherSide = sideW[1][2]; 
    
       while(sideG[2][1] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(1);
       arr.add(1);
       
       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns --;
       }
       
       if(otherSide == "white "){
         moveDir(1);
         moveDir(1);
         arr.add(1);
         arr.add(1);
       }
       
       if(otherSide == "red   "){
         moveDir(10);
         moveDir(6);
         moveDir(6);
         arr.add(10);
         arr.add(6);
         arr.add(6);
       }
       
       if(otherSide == "orange"){
         moveDir(11);
         moveDir(4);
         moveDir(4);
         arr.add(11);
         arr.add(4);
         arr.add(4);
       }
       
        if(otherSide == "yellow"){
          System.out.println("yellllosufb");
         moveDir(11);
         moveDir(11);
         moveDir(3);
         moveDir(3);
         arr.add(11);
         arr.add(11);
         arr.add(3);
         arr.add(3);
       } 
     }
     
     
    //case: sideW[1][0]/////////////////////////////////////////////////////////////////////////
      if(sideW[1][0] == "green "){
        sideGreen = true;
      System.out.println("is green");
       int turns = 0;
       
       String otherSide = sideR[2][1]; 
    
       while(sideG[1][0] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(7);
       arr.add(7);
       
       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns --;
       }
       
       if(otherSide == "white "){
         moveDir(11);
         moveDir(1);
         moveDir(1);
         arr.add(11);
         arr.add(1);
         arr.add(1);
       }
       
       if(otherSide == "red   "){
         moveDir(6);
         moveDir(6);
         arr.add(6);
         arr.add(6);
       }
       
       if(otherSide == "orange"){
         moveDir(11);
         moveDir(11);
         moveDir(4);
         moveDir(4);
         arr.add(11);
         arr.add(11);
         arr.add(4);
         arr.add(4);
       }
       
        if(otherSide == "yellow"){
          System.out.println("yellllosufb");
         moveDir(10);
         moveDir(3);
         moveDir(3);
         arr.add(10);
         arr.add(3);
         arr.add(3);
       } 
     }
     
      
    //case: sideR[0][1]/////////////////////////////////////////////////////////////////////////
      if(sideR[0][1] == "green "){
        sideGreen = true;
      System.out.println("is green");
       int turns = 0;
       
       String otherSide = sideY[1][0]; 
    
       while(sideG[0][1] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(2);
       arr.add(2);
       
       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns --;
       }
       
       if(otherSide == "white "){
         moveDir(11);
         moveDir(11);
         moveDir(1);
         moveDir(1);
         arr.add(11);
         arr.add(11);
         arr.add(1);
         arr.add(1);
       }
       
       if(otherSide == "red   "){
         moveDir(11);
         moveDir(6);
         moveDir(6);
         arr.add(11);
         arr.add(6);
         arr.add(6);
       }
       
       if(otherSide == "orange"){
         moveDir(10);
         moveDir(4);
         moveDir(4);
         arr.add(10);
         arr.add(4);
         arr.add(4);
       }
       
        if(otherSide == "yellow"){
          System.out.println("yellllosufb");
         moveDir(3);
         moveDir(3);
         arr.add(3);
         arr.add(3);
       } 
     }
     
        //case: sideY[1][2]/////////////////////////////////////////////////////////////////////////
      if(sideY[1][2] == "green "){
        sideGreen = true;
      System.out.println("is green");
       int turns = 0;
       
       String otherSide = sideO[0][1]; 
    
       while(sideG[1][2] == "green "){
         moveDir(8);
         arr.add(8);
         turns++;
       }
       
       moveDir(4);
       arr.add(4);
       
       while(turns !=0){
         moveDir(9);
         arr.add(9);
         turns--;
       }
       
       if(otherSide == "white "){
         moveDir(10);
         moveDir(1);
         moveDir(1);
         arr.add(10);
         arr.add(1);
         arr.add(1);
       }
       
       if(otherSide == "red   "){
         moveDir(10);
         moveDir(10);     
         moveDir(6);
         moveDir(6);
         arr.add(10);
         arr.add(10);
         arr.add(6);
         arr.add(6);
       }
       
       if(otherSide == "orange"){
         moveDir(4);
         moveDir(4);
         arr.add(4);
         arr.add(4);
       }
       
        if(otherSide == "yellow"){
          System.out.println("yellllosufb");
         moveDir(11);
         moveDir(3);
         moveDir(3);
         arr.add(11);
         arr.add(3);
         arr.add(3);
       } 
     }
     }
         //}
     
     
     
    
     
     
   
   int[] arr1 = new int[arr.size()];
   
   for(int i =0; i < arr.size(); i++){
     //moveDir(arr.get(i)); moveDir(arr.get(i)); moveDir(arr.get(i));
     arr1[i] = arr.get(i);
     System.out.println("i" + i);
   }
   
   return arr1;
 }
 
  
  
  
  
  
}
