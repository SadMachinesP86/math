const PI: f32 = 3.14;

pub struct Circle {
    pub radius: f32,
}

impl Circle {
    pub fn area(&self) -> f32 {
        PI * (self.radius.powf(2.0))
    }
}
