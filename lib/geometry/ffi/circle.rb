require 'fiddle/import'

module Geometry
  module FFI
    module Circle
      extend Fiddle::Importer
      dlload File.expand_path('libgeometry.so', __dir__)

      extern '*Circle circle_make(float radius)'
      extern 'float circle_get_radius(struct circle*)'
      extern 'void circle_set_radius(struct circle*, float radius)'
      extern 'float circle_area(struct circle*)'
    end
  end
end
