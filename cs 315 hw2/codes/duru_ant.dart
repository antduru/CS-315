void main(){
    
  // pretest or posttest in while loop
  var myVar = 5;
  var pretest = true;
  print("-----------CHECK IF PRETEST OR POSTTEST FOR WHILE LOOP-----------");
   
  // check if dart is posttest in while loop
  while(myVar >= 10){
    pretest = false;
    print("Dart is posttest for while loop");
  }
   
  // check if dart is pretest in while loop
  if(pretest == true){
    print("Dart is pretest for while lopp");
  }
   
  // pretest or posttest in do-while loop
  var myVar2 = 5;
  var pretest2 = true;
  print("-----------CHECK IF PRETEST OR POSTTEST FOR WHILE LOOP-----------");
  do {
    pretest2 = false;
    print("Dart is posttest for do-while loop");
    myVar2++;
  } while (myVar2 >= 10);

  if (pretest2 == true) {
    print ("Dart is pretest for do-while loop");
  }
   
  // break statement for while loop
  var value = 2;
  var loopCount = 1;
  print("-----------BREAK STATEMENT FOR WHILE LOOP-----------");
  while(value <= 10){
    print("loop: $loopCount , value: $value");
    value++;
    loopCount++;
       
    //check if break
    if(value == 7){
      break;
    }
  }
  print("end of while loop");
  print("loop uses break when the value is $value");
   
  // break statement for do-while loop
  var value2 = 2;
  var loopCount2 = 1;
  print("-----------BREAK STATEMENT FOR DO-WHILE LOOP-----------");
  do{
    print("loop: $loopCount2 , value: $value2");
    value2++;
    loopCount2++;
       
    //check if break
    if(value2 == 5){
      break;
    }
  }while(value2 <= 10);
  print("end of do-while loop");
  print("loop uses break when the value is $value2");
  
  // break statement for for loop
  print("-----------BREAK STATEMENT FOR FOR LOOP-----------");
  var lc = 1;
  for(var i = 3; i < 9; i++){
    print("loop: $lc , value: $i");
    lc++;
    if(i == 8){
      print("value is now $i , loop now uses break");
      break;
    }
  }
  print("end of for loop");
   
  // continue statement for while loop
  var value3 = 2;
  var loopCount3 = 1;
  var cValue;
  print("-----------CONTINUE STATEMENT FOR WHILE LOOP-----------");
  while(value3 <= 10){
    value3++;
      //check if continue
      if(value3 == 7){
        cValue = 7;
        loopCount3++;
        print("skipped when value is 7");
        continue;
      }
      print("loop: $loopCount3 , value: $value3");
      loopCount3++;
  }
  print("end of while loop");
  print("loop uses continue when the value is $cValue");
   
  // continue statement for do-while loop
  var value4 = 2;
  var loopCount4 = 1;
  var cValue2;
  print("-----------CONTINUE STATEMENT FOR DO-WHILE LOOP-----------");
  do { 
    value4++; 
        
    //check if continue
    if (value4 == 5) { 
      cValue2 = 5;
      loopCount4++;
      print("skippen when value is:  $cValue2"); 
      continue; 
    } 
        
    print("loop: $loopCount4 , value: $value4"); 
    loopCount4++;
  } while (value4 <= 10); 
  print("end of do-while loop");
  print("loop uses continue when the value is $cValue2");
  
  // continue statement for for loop
   print("-----------CONTINUE STATEMENT FOR FOR LOOP-----------");
   var lc2 = 1;
   for(var i = 3; i < 9; i++){
     if(i == 5){
       print("value is now $i , loop now uses continue");
       continue;
     }
     print("loop: $lc2 , value: $i");
     lc2++;
   }
   print("end of for loop");
}