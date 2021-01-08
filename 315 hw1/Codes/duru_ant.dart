void main(){
   // Initializing the hash
   Map myMap = {
                 'first': 1,
                 'second': 2,
                 'third': 3,
                 'fourth': 4,
                 'fifth': 5};
   print("-----------1-Associative Array Has Been Initialized.-----------");
   
   // Getting value by a given key
   print("-----------2-Getting the value of an element.-----------");
   var myValue = myMap["first"];
   print("value with the key \"first\" is:  $myValue ");
   
   // Adding an element
   print("-----------3-Adding an element.-----------");
   myMap["sixth"] = 6;
   print("An element with key \"sixth\" and value 6 has been added");
   
   // Removing an element
   print("-----------4-Removing an element.-----------");
   myMap.remove('third');
   print("The element with key \"third\" has been removed");
   
   // Modifying an element
   print("-----------5-Modifying an element.-----------");
   var before = myMap['fourth'];
   print("Before modify, the value with key \"fourth\" was: $before");
   myMap["fourth"] = 7;
   var after = myMap['fourth'];
   print("After modify, the value with key \"fourth\" is: $after");
   
   // Search for existence of a key
   print("-----------6-Searching for existence of a key.-----------");
   if(myMap["first"] != null){
       var fValue = myMap['first'];
       print("the key \"first\" is in the hash with value: $fValue ");
   }
   else{
       print("the key \"first\" is not in the hash");
   }
   
   // Search for existence of a value
   print("-----------7-Searching for existence of a value.-----------");
   var e = myMap.keys.firstWhere((k) => myMap[k] == 2, orElse: () => null);
   
   if(e == null)
   {
       print("the value 2 is not in the hash");
   }
   else{
       print("the value 2 is in the hash");
   }
   
   // Loop through the hash and print pairs
   print("-----------8-Iterating through the hash and printing pairs.-----------");
   void foo(k, v){
       print("key: $k , value: $v");
   }
   
   myMap.forEach((k, v) {
    foo(k,v);
    });
}