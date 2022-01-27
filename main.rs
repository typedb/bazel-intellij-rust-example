extern crate lib1;
extern crate lib2;

fn main() {
    lib1::fruit::apple::eat();
    lib1::fruit::banana::eat();
    lib2::veg::carrot::eat();
    lib2::veg::onion::eat();
}
