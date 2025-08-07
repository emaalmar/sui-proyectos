module hello_world::hello_world;

use std::debug::print;
use std::string::utf8;

fun practica1() {
    let a = 260u16;
    let b: u16 = 8;
    let c: u16 = a + b;
    print(&c);

    let variable1: bool = true;
    let variable2: bool = false;

    print(&variable1);
    print(&variable2);

    let edad: u8 = 20;
    let comparacion = edad > 18u8;
    print(&comparacion);
    print(&(edad >= 18u8));

    let edad = 2090000;
    let grande: u8 = (edad as u8);

    print(&grande);
}

#[test]
fun prueba() {
    practica1();
}
