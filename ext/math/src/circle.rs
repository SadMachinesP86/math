use magnus::{function, method, prelude::*, Error, RModule};

#[magnus::wrap(class = "Geometry::Circle")]
struct Circle {
    radius: f32,
}

impl Circle {
    fn new(radius: f32) -> Self {
        Self { radius }
    }

    fn area(&self) -> f32 {
        std::f32::consts::PI * (self.radius.powf(2.0))
    }

    fn get_radius(&self) -> f32 {
        self.radius
    }
}

pub fn expose(module: RModule) -> Result<(), Error> {
    let class = module.define_class("Circle", Default::default())?;
    class.define_singleton_method("new", function!(Circle::new, 1))?;
    class.define_method("area", method!(Circle::area, 0))?;
    class.define_method("radius", method!(Circle::get_radius, 0))?;
    Ok(())
}
