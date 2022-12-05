pub struct Rectangle {
    pub width: f32,
    pub height: f32
}

impl Rectangle {
    pub fn area(&self) -> f32 {
        self.width * self.height
    }
}
