fn main() {
    // check if while loop pretest/posttest
    println!("----------CHECK PRETEST/POSTTEST FOR WHILE LOOP----------");
    let mut n = 0;
    print!("The value of n before loop: ");
    println!("{}", n);
    let mut pretest = true;
    while n > 10{
        pretest = false;
        println!("Rust is posttest for while loop");
    }
    
    if pretest{
        println!("Rust is pretest for while loop");
    }
    
    // break statement for while loop
    println!("----------BREAK STATEMENT FOR WHILE LOOP----------");
    let mut x = 1;
    let mut loop_count = 1;
    print!("The value of x before loop: ");
    println!("{}", x);
    while x < 16{
        if x == 10{
            break;
        }
        print!("loop: ");
        print!("{}", loop_count);
        print!(" , x: ");
        println!("{}", x);
        x = x + 1;
        loop_count = loop_count + 1;
    }
    println!("end of while loop");
    print!("loop used break when x was: ");
    println!("{}", x);
    
    // continue statement for while loop
    println!("----------CONTINUE STATEMENT FOR WHILE LOOP----------");
    let mut y = 1;
    let mut loop_count2 = 1;
    let mut temp = 0;
    print!("The value of x before loop: ");
    println!("{}", y);
    while y < 10{
        y = y + 1;
        loop_count2 = loop_count2 + 1;
        if y == 6{
            temp = y;
            print!("{}", y);
            println!(" is skipped");
            continue;
        }
        print!("loop: ");
        print!("{}", loop_count2);
        print!(" , y: ");
        println!("{}", y);
        
    }
    println!("end of while loop");
    print!("loop used continue when y was: ");
    println!("{}", temp);
}
