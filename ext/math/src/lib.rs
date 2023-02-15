extern crate magnus;

use magnus::{Error, define_module};

mod rectangle;
mod circle;
mod integer;

#[magnus::init]
fn init() -> Result<(), Error> {
    let module = define_module("Geometry")?;
    circle::expose(module).map_err(|err| println!("{:?}", err)).ok();
    rectangle::expose(module).map_err(|err| println!("{:?}", err)).ok();
    integer::expose().map_err(|err| println!("{:?}", err)).ok();
    Ok(())
}
