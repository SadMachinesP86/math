require_relative 'ffi/rectangle'
require_relative 'ffi/circle'

module Rusty
  def exposes(name)
    ffi_module = Module.const_get("Geometry::FFI::#{name}")

    ffi_module.methods
      .select { |method| method.start_with? name.downcase }
      .each do |method_name|

      _, operation, attribute = method_name.to_s.split('_')

      case operation
      when 'make'
        define_method('initialize') do |*args|
          instance_variable_set('@ptr', ffi_module.send(method_name, *args))
        end
      when 'get'
        define_method(attribute) do
          ffi_module.send(method_name, instance_variable_get('@ptr'))
        end
      when 'set'
        define_method("#{attribute}=") do |*args|
          ffi_module.send(method_name, instance_variable_get('@ptr'), *args)
        end
      else
        define_method(operation) do |*args|
          ffi_module.send(method_name, instance_variable_get('@ptr'), *args)
        end
      end
    end
  end
end
