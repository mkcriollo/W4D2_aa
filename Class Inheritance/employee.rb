class Employee
    attr_reader :name, :title, :salary
    attr_accessor :boss

    def initialize(name,salary,title,boss = nil)
        @name = name 
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        self.salary * multiplier
    end

    def boss=(boss)
        @boss = boss
        boss.add_emp(self) unless @boss == nil
        boss
    end

    
  


end