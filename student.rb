class Student 

  attr_reader :first_name, :last_name, :grade 
	def initialize(first_name, last_name, grade)									     
		@first_name = first_name 
		@last_name = last_name 
		@grade = grade 
	end

    def senior? #expressing intent
    	grade == 12
    end

	def to_s
		"#{last_name}, #{first_name}" 
	end

	def junior?
		grade == 10
	end
end 

def seniors(students)
	students.select { |student| student.senior? }
end

def junior(students)
	students.select { |student| student.junior? }
end
fred = Student.new("Fred", "James", 12 ) 
sarah = Student.new("Sarah", "Smith", 12)
jack = Student.new("Jack", "Gong", 10)



all_students = [fred,sarah, jack] 
           
 puts 'Seniors'                      		
seniors(all_students).each do |student|
	puts student
end

puts ''
puts 'Juniors'
junior(all_students).each do |student|
	puts student
end
