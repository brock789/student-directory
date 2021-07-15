studentsold = [
{name: "Dr. Hannibal Lecter", cohort: :november},
{name: "Darth Vader", cohort: :november},
{name: "Nurse Ratched", cohort: :november},
{name: "Michael Corleone", cohort: :november},
{name: "Alex DeLarge", cohort: :november},
{name: "The Wicked Witch of the West", cohort: :november},
{name: "Terminator", cohort: :november},
{name: "Freddy Krueger", cohort: :november},
{name: "The Joker", cohort: :november},
{name: "Joffrey Baratheon", cohort: :november},
{name: "Norman Bates", cohort: :november}
]

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end


def print_header
    puts "The students of Villains Academy"
    puts "-------------"
end
# print the output

def print(students)
  # 12 characters
  # return  students.select { |student| student[:name].length<12 }.each_with_index do |student, index| 
  #   puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
  # end
  # #starts with A
   return  students.select { |student| student[:name].start_with?('A') }.each_with_index do |student, index| 
     puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
   end
  #x=0
  #while x < students.length
    #p "#{students[x].index}. #{students[x].value} #{students[x]}
    #x+=1
  #end
end

def print_footer(students)
  puts "Overall, we have #{students.size} great students"
end

#calling the methods above
students = input_students
print_header
print(students)
print_footer(students)
