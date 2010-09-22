require 'bacon'

module Bacon
  module Rspec
    VERSION = '0.0.1'

    module LazyLet
      def let(name, &block)
        instance_var_name = "@_lazylet_#{name}"

        (class << self; self; end).send(:define_method, name) do
          if !instance_variable_defined?(instance_var_name)
            instance_variable_set(instance_var_name, block.call)
          end
          instance_variable_get(instance_var_name)
        end

        @after << lambda { remove_instance_variable(instance_var_name) }
      end
    end
  end
end

Bacon::Context.send :include, Bacon::Rspec::LazyLet
