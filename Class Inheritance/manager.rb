require_relative "employee.rb"

class Manager < Employee

    def initialize(name,salary,title,boss=nil)
        super(name,salary,title,boss)
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

private



ned = Manager.new("Ned",1000000,"Founder",nil)
darren = Manager.new("Darren",78000,"TA Manager",ned)
shawna = Employee.new("Shawna",12000,"TA",darren)
david = Employee.new("David",10000,"TA",darren)

ned.add_emp(darren)
darren.add_emp(shawna)
darren.add_emp(david)

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000