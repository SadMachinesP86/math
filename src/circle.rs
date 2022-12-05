pub struct Circle {
    pub radius: f32,
}

impl Circle {
    pub fn area(&self) -> f32 {
        std::f32::consts::PI * (self.radius.powf(2.0))
    }
}

// Public API for Circle operations

// Initialize
#[no_mangle]
pub extern fn circle_make(radius: f32) -> Box<Circle> {
    Box::new(Circle { radius: radius })
}

// Getters and setters
#[no_mangle]
pub extern fn circle_get_radius(circle: &Circle) -> f32 {
    circle.radius
}

#[no_mangle]
pub extern fn circle_set_radius(circle: &mut Circle, radius: f32) {
    circle.radius = radius
}

// Methods
#[no_mangle]
pub extern fn circle_area(circle: &Circle) -> f32 {
    circle.area()
}
