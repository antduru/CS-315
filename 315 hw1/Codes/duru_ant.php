<?php
// Defining the function to use later to print key,value pairs
function foo($arr, $key){
    if(array_key_exists($key, $arr)){
        echo $key, "    ", $arr[$key];
        echo "\n";
    }    

}



// Initializing the associative array
$myArr = array(
            "first" => 10,
            "second" => 65,
            "third" => 4,
            "fourth" => 0,
            "fifth" => 77);
echo "---------------1-ASSOCIATIVE ARRAY HAS BEEN INITIALIZED.----------------";



// Getting and printing a value by its key
echo "\n";
echo "---------------2-GETTING THE VALUE OF KEY \"third\".----------------";
$myValue = $myArr["third"];
echo "\n";
echo "key: third, value: " , $myValue;



// Adding a new element with key "sixth" and value 6
echo "\n";
echo "---------------3-ADDING A NEW ELEMENT.----------------";
$myArr["sixth"] = 6;
echo "\n";
echo "A new element with key \"sixth\" has been added, its value is: ", $myArr["sixth"];



// Removing an element
echo "\n";
echo "---------------4-REMOVING AN ELEMENT.----------------";
echo "\n";
unset($myArr["second"]);
echo "The element with key \"second\" has been removed.";



// Modifying the value of an element
echo "\n";
echo "---------------5-MODIFYING THE VALUE OF AN ELEMENT.----------------";
echo "\n";
echo "The current value of the key \"first\" is: ", $myArr["first"];
$myArr["first"] = 56;
echo "\n";
echo "After the modify, the value of the key \"first\" is: ", $myArr["first"];



// Search for existence of a key
echo "\n";
echo "---------------6-SEARCHING EXISTENCE OF KEY \"second\".----------------";
echo "\n";
if( array_key_exists("second", $myArr)){
    echo "the key \"second\" is in the associative array with value: ", $myArr["second"];
}
else{
    echo "the key \"second\" is not in the associative array";
}




// Search for existence of a value
echo "\n";
echo "---------------7-SEARCHING EXISTENCE OF VALUE 77.----------------";
echo "\n";
if( array_search(77, $myArr) != FALSE){
    echo "77 is in the associative array with key: ", array_search(77, $myArr);
}




// Loop through the array and printing the pairs using my function
echo "\n";
echo "---------------8-PRINTING PAIRS.----------------";
echo "\n";
foreach($myArr as $key => $value){
    foo($myArr, $key);
}
?>
