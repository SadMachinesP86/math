use magnus::{define_global_function, function, Error};

fn proper_divisors(int: u32) -> Vec<u32> {
    (1..(int/2 + 1)).into_iter()
                    .filter( |potential_divisor| int % potential_divisor == 0)
                    .collect()
}

fn aliquot_sum(int: u32) -> u32 {
    proper_divisors(int).iter().sum()
}

pub fn expose() -> Result<(), Error> {
    define_global_function("_rust_proper_divisors", function!(proper_divisors, 1));
    define_global_function("_rust_aliquot_sum", function!(aliquot_sum, 1));
    Ok(())
}
