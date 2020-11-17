class Employee
    attr_reader :name, :title, :salary
    attr_accessor :boss

    def initialize(name,salary,title,boss = nil)
        @name = name 
        @title = title
        @salary = salary
        @boss
    end

    def bonus(multiplier)
        @bonus = self.salary * multiplier
    end

    def boss=(boss)
        @boss = boss
        boss.add_emp(self) unless @boss == nil
    end
  


end