require_relative('../models/student.rb')


student1 = Student.new( {
  'first_name' => 'Harry',
  'last_name' => 'Potter',
  'house' => 'Gryffindor',
  'age' => 16
  })

student2 = Student.new( {
  'first_name' => 'Draco',
  'last_name' => 'Malfoy',
  'house' => 'Slytherin',
  'age' => 16
  })

student3 = Student.new( {
  'first_name' => 'Luna',
  'last_name' => 'Lovegood',
  'house' => 'Ravenclaw',
  'age' => 15
 })

student4 = Student.new( {
 'first_name' => 'Newt',
 'last_name' => 'Scamander',
 'house' => 'Hufflepuff',
 'age' => 18
 })

 student1.save()
 student2.save()
 student3.save()
 student4.save()
