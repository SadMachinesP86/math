#[no_mangle]
pub extern fn integer_proper_divisors(int: u32) -> Vec<u32> {
    let mut proper_divisors: Vec<u32> = Vec::new();

    for potential_divisor in 1..int/2 {
        if int % potential_divisor == 0 {
            proper_divisors.push(potential_divisor)
        }
    }

    proper_divisors
}
