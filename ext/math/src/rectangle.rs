use magnus::{define_class, function, method, prelude::*, Error};

#[magnus::wrap(class = "Rectangle")]
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

    fn width(&self) -> f32 {
        self.width
    }

    fn height(&self) -> f32 {
        self.height
    }
}

pub fn expose() -> Result<(), Error> {
    let class = define_class("Rectangle", Default::default())?;
    class.define_singleton_method("new", function!(Rectangle::new, 2))?;
    class.define_method("area", method!(Rectangle::area, 0))?;
    class.define_method("width", method!(Rectangle::width, 0))?;
    class.define_method("height", method!(Rectangle::height, 0))?;
    Ok(())
}
