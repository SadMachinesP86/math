require_relative 'ffi/rectangle'
require_relative 'rusty'

module Geometry
  class Rectangle
    extend Rusty

    exposes 'Rectangle'
  end
end
