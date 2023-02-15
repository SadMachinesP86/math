use magnus::{Error, class, Module, method};

fn proper_divisors(int: u32) -> Vec<u32> {
    (1..(int/2 + 1)).into_iter()
                    .filter( |potential_divisor| int % potential_divisor == 0)
                    .collect()
}

fn aliquot_sum(int: u32) -> u32 {
    proper_divisors(int).iter().sum()
}

pub fn expose() -> Result<(), Error> {
    class::integer().define_method("proper_divisors", method!(proper_divisors, 0))?;
    class::integer().define_method("aliquot_sum", method!(aliquot_sum, 0))?;
    Ok(())
}
