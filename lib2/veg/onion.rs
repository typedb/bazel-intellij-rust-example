extern crate rand;

use self::rand::random;

pub fn eat() {
    let x: u8 = random();
    println!("Eating onion, and here's a random number: {}", x);
}
