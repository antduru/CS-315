use std::collections::HashMap;

fn main() {

    // Initializing the map
    let mut my_map = HashMap::new();
    my_map.insert("first", "1");
    my_map.insert("second", "2");
    my_map.insert("third", "3");
    my_map.insert("fourth", "4");
    my_map.insert("fifth", "5");
    println!( "1-Map has been initialized.");
    
    // Getting value by key
    println!("2-Getting the value of an element by using key");
    let my_value = my_map["first"];
    print!( "the value for the key \"first\" is: ");
    println!("{:?}", my_value);
    
    // Adding a new element
    println!("3-Adding a new element");
    my_map.insert("sixth", "6");
    println!("Adding a new element with key \"sixth\" and value 6 (String) has been added");
    
    // Removing an element
    println!("4-Removing an element");
    let k = "third";
    my_map.remove(&k);
    println!("Element with key \"third\" has been removed.");
    
    // Modifying an element
    println!("5-Modifying an element");
    let my_f = my_map["fourth"];
    print!("The current value for key \"fourth\" is: ");
    println!("{:?}", my_f);
    *my_map.get_mut("fourth").unwrap() = "10";
    let my_f_new = my_map["fourth"];
    print!("After modify, value for key \"fourth\" is: ");
    println!("{:?}", my_f_new);
    
    // Search by key
    println!("6-Searching existence of key \"third\"");
    let my_key = "third";
    if my_map.contains_key(&my_key)
    {
        let mv = my_map["third"];
        print!("the key \"third\" is in the map with value: ");
        println!("{:?}", mv);
    }
    else
    {
        println!("the key \"third\" is not in the map");
    }
    
    // Search by value
    println!("7-Searching existence of value 1");
    let v: String = "1".to_owned();
    let does_contain = my_map.values().any(|&val| *val == v);
    if does_contain == true
    {
        println!("the value 1 is in the map");
    }
    else
    {
        println!("the value 1 is not in the map");
    }
    
    // For loop
    println!("8-For loop");
    for (key, value) in &my_map {
        foo(key, value);
    }
}

// my function to print pairs
fn foo(k: &&str, v: &&str)
{
    print!("key: ");
    print!("{:?}", k);
    print!(", value: ");
    println!("{:?}", v);
}
    
