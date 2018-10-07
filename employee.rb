module Actualize
  class Employee
    attr_reader :first_name, :last_name, :active
    attr_writer :active

    def initialize(input_options_hash)
      @first_name = input_options_hash[:first_name]
      @last_name = input_options_hash[:last_name]
      @salary = input_options_hash[:salary]
      @active = input_options_hash[:active]
    end

    def print_info
      puts "#{first_name} #{last_name} makes #{@salary} a year."
    end

    def give_annual_raise
      @salary = 1.05 * @salary
    end
  end
end
