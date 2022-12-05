use crate::rectangle::Rectangle;
use crate::circle::Circle;

pub mod rectangle;
pub mod circle;

// Public API for Rectangle operations
#[no_mangle]
pub extern fn make_rectangle(width: f32, height: f32) -> Box<Rectangle> {
    Box::new(Rectangle { width: width, height: height })
}

#[no_mangle]
pub extern fn area_rectangle(rectangle: &Rectangle) -> f32 {
    rectangle.area()
}

// #[no_mangle]
// pub extern fn pub_rectangle_get_x(rectangle: &Rectangle) -> f32 {
//     rectangle.x
// }

// #[no_mangle]
// pub extern fn pub_rectangle_set_width(rectangle: &Rectangle, width: f32) {

// }

// Public API for Circle operations
#[no_mangle]
pub extern fn make_circle(radius: f32) -> Box<Circle> {
    Box::new(Circle { radius: radius })
}

#[no_mangle]
pub extern fn area_circle(circle: &Circle) -> f32 {
    circle.area()
}
