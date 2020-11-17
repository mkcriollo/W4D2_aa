require_relative "employee.rb"

class Manager < Employee

    def initialize
        @employees = []
    end

    def bonus(multiplier)
        tot_emp_sal = @employees.map { |emp| emp.salary }
        @bonus = tot_emp_sal.sum * multiplier
    end

    def add_emp(emp)
        @employees << emp
    end


end



ned = Employee.new("Ned",1000000,"Founder",nil)
darren = Employee.new("Darren",78000,"TA Manager",ned)
shawna = Employee.new("Shawna",12000,"TA",darren)
david = Employee.new("David",10000,"TA",darren)

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000