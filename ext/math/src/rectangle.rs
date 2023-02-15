use magnus::{function, method, prelude::*, Error, RModule};

#[magnus::wrap(class = "Geometry::Rectangle")]
struct Rectangle {
    width: f32,
    height: f32
}

impl Rectangle {
    fn new(width: f32, height: f32) -> Self {
        Self { width, height }
    }

    fn area(&self) -> f32 {
        self.width * self.height
    }

    fn get_width(&self) -> f32 {
        self.width
    }

    fn get_height(&self) -> f32 {
        self.height
    }
}

pub fn expose(module: RModule) -> Result<(), Error> {
    let class = module.define_class("Rectangle", Default::default())?;
    class.define_singleton_method("new", function!(Rectangle::new, 2))?;
    class.define_method("area", method!(Rectangle::area, 0))?;
    class.define_method("width", method!(Rectangle::get_width, 0))?;
    class.define_method("height", method!(Rectangle::get_height, 0))?;
    Ok(())
}
