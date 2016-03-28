# Written by James Neally, 3/28/16
# On-Site Coding Challenge

require 'bigdecimal'
require 'bigdecimal/util'

class RPNCalc

  def initialize
    self.clear
  end

  def clear
    @stack = Array.new
  end

  def run
    self.clear
    loop do
      print "> "
      input = gets.chomp

      # quit
      if input == "q"
        return
      end

      case
      # if number
      when input =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/
        @stack.push input.to_d

      # if operator
      when input =~ /\A[+-\/\*]\Z/
        if @stack.length < 2
          puts "Error: Not enough operands"
          next
        end
        right = @stack.pop
        left = @stack.pop
        result =
          case
            when input == "+"
              left + right
            when input == "-"
              left - right
            when input == "/"
              left / right
            when input == "*"
              left * right
            end

        @stack.push(result)

      # o.w. something is wrong
      else
        puts "Input Error"
      end

      puts "%g" % @stack.last unless @stack.empty?

    end
  end

end

calc = RPNCalc.new
calc.run
