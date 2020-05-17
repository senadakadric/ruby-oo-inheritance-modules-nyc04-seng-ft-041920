# require_relative './class_methods_module.rb'
# require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer
    # initial way of including Dance instance methods and MetaDancing class methods:
    # include Dance
    # extend MetaDancing

    #refactored way:
    extend FancyDance::ClassMethods
    include FancyDance::InstanceMethods

    attr_accessor :name

    def initialize(name)
        @name = name
    end

end