use magnus::{Error, define_module};

mod rectangle;
mod circle;

pub fn expose() -> Result<(), Error> {
    let module = define_module("Geometry")?;
    circle::expose(module).map_err(|err| println!("{:?}", err)).ok();
    rectangle::expose(module).map_err(|err| println!("{:?}", err)).ok();
    Ok(())
}
