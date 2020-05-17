# require_relative './dance_module.rb'
# require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'

class Kid
    #initial way
    #if we use the include keyword, we allow our class to use all of the methods of the included module (in this case Dance, found in the dance_module.rb file as instance methods
    # include Dance

    # #in order to lend a module's methods to a class as class methods, we use the extend keyword
    # extend MetaDancing

    #refactored way
    extend FancyDance::ClassMethods
    include FancyDance::InstanceMethods

    attr_accessor :name

    def initialize(name)
        @name = name
    end

end