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

class Manager < Employee
  def initialize(input_options_hash)
    super
    @employees = input_options_hash[:employees]
  end

  def send_report
    puts "Sending email..."
    # use email sending library
    puts "Email sent!"
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

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)


manager = Manager.new(
  first_name: "Saron",
  last_name: "Yitbarek",
  salary: 100000,
  active: true,
  employees: [employee1, employee2]
)
manager.print_info
manager.send_report
p manager
manager.give_all_raises
manager.fire_all_employees
p manager
