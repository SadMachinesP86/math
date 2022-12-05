require 'fiddle/import'

module Geometry
  module FFI
    module Rectangle
      extend Fiddle::Importer
      dlload File.expand_path('libgeometry.so', __dir__)

      extern 'float area_rectangle(struct rectangle*)'
      extern '*Rectangle make_rectangle(float width, float height)'
    end
  end
end
