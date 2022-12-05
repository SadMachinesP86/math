pub struct Rectangle {
    pub width: f32,
    pub height: f32
}

impl Rectangle {
    pub fn area(&self) -> f32 {
        self.width * self.height
    }
}

// Public API for Rectangle operations

// Initialize
#[no_mangle]
pub extern fn rectangle_make(width: f32, height: f32) -> Box<Rectangle> {
    Box::new(Rectangle { width: width, height: height })
}

// Getters and setters
#[no_mangle]
pub extern fn rectangle_get_width(rectangle: &Rectangle) -> f32 {
    rectangle.width
}

#[no_mangle]
pub extern fn rectangle_set_width(rectangle: &mut Rectangle, width: f32) {
    rectangle.width = width
}

#[no_mangle]
pub extern fn rectangle_get_height(rectangle: &Rectangle) -> f32 {
    rectangle.height
}

#[no_mangle]
pub extern fn rectangle_set_height(rectangle: &mut Rectangle, height: f32) {
    rectangle.height = height
}

// Methods
#[no_mangle]
pub extern fn rectangle_area(rectangle: &Rectangle) -> f32 {
    rectangle.area()
}
