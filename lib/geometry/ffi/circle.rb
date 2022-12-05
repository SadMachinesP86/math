require 'fiddle/import'

module Geometry
  module FFI
    module Circle
      extend Fiddle::Importer
      dlload File.expand_path('libgeometry.so', __dir__)

      extern 'float area_circle(struct circle*)'
      extern '*Circle make_circle(float radius)'
    end
  end
end
