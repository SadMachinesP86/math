extern crate magnus;

use magnus::Error;

mod geometry;
mod integer;

#[magnus::init]
fn init() -> Result<(), Error> {
    geometry::expose().map_err(|err| println!("{:?}", err)).ok();
    integer::expose().map_err(|err| println!("{:?}", err)).ok();
    Ok(())
}
