require "./employee.rb"
require "./email_reportable.rb"

class Manager < Employee
  include EmailReportable

  def initialize(input_options_hash)
    super
    @employees = input_options_hash[:employees]
  end

  def give_all_raises
    # index = 0
    # num_employees = @employees.length
    # num_employees.times do
    #   employee = @employees[index]
    #   employee.give_annual_raise
    #   index = index + 1
    # end
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end
end
