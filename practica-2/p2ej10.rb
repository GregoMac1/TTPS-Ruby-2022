module Countable #sin terminar
  module ClassMethods
    def count_invocations_of sym
      if @methods == nil
        @methods = {}
      @methods[:sym] = 0
      puts @methods
    end
  end

  def self.included(base)
    base.extend(ClassMethods)
  end

  def invoked? sym
    @methods.include? sym
  end

  def invoked sym

  end
end

class Greeter
  include Countable

  def hi
    puts 'Hey!'
  end

  def bye
    puts 'See you!'
  end

  count_invocations_of :hi
end

a = Greeter.new
b = Greeter.new
puts(a.invoked? :hi)
# => false
puts(b.invoked? :hi)
# => false
a.hi
# Imprime "Hey!"
puts(a.invoked :hi)
# => 1
puts(b.invoked :hi)
