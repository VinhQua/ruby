class Student
    def set_name=(student_name)
        @name = student_name
    end
    def get_name
        return @name
    end
    def set_class=(class_name)
        @class = class_name
    end
    def get_class
        return @class
    end
    def set_grade=(grade)
        @grade = grade
    end
    def get_grade
        return @grade
    end
    def quote
        return "Nothing to quote"
    end
end

my_student = Student.new
my_student.set_name="John"
my_student_name = my_student.get_name
puts ("#{my_student_name} says #{my_student.quote}")