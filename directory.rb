def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  name = gets.chomp
  # while the name is not empty repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name ffrom the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end

def print(students)
  students.each.with_index(1) do |student, index|
    puts "#{index}: #{student[:name]} #{student[:cohort]} cohort"
  end
end

# Excercise 2 - Modify your program to only print the students whose name begins with a specific letter.
def print_students_whose_name_starts_with(students, letter)
  students.each.with_index(1) do |student, index|
    s = student[:name]
    if s[0] == letter
      puts "\n#{index}: #{student[:name]} #{student[:cohort]} cohort"
    end
  end
end

def print_footer(students)
  puts "\nOverall, we have #{students.count} great students"
end

# Modify your program to only print the students whose name is shorter than 12 characters.
def print_student_whose_name_is_shorter_than(students, number)
  puts "\nThis is a list if students whose name is shorter than #{number} characters long"
  students.each.with_index(1) do |student, index|
    s = student[:name]
    if s.length < number
      puts "#{index}: #{student[:name]}"
    end
  end
end

# nothing happens until we call the methods
students = input_students
print_header
#print(students)
letter_to_search = "n"
#print_students_whose_name_starts_with(students, letter_to_search)

number_to_search = 12
print_student_whose_name_is_shorter_than(students, number_to_search)

print_footer(students)
