student_count = 11
# first we print a list of students
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex Delarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Kreuger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
# and then print them
puts "The students of Villains Academy"
puts "--------------"
students.each do |student|
  puts student
end
# finally, we print the total number of students
puts "Overall, we have #{students_count} great students"
