require_relative('../models/student.rb')
require_relative('../models/house.rb')


house1 = House.new( {
   'name' => 'Gryffindor',
   'logo_url' => '/'
   })
house2 = House.new( {
   'name' => 'Slytherin',
   'logo_url' => '/'
   })
house3 = House.new( {
  'name' => 'Ravenclaw',
  'logo_url' => '/'
  })
house4 = House.new( {
     'name' => 'Hufflepuff',
     'logo_url' => '/'
  })


student1 = Student.new( {
  'house_id' => 1,
  'first_name' => 'Harry',
  'last_name' => 'Potter',
  'age' => 16
  })

student2 = Student.new( {
'house_id' => 2,
  'first_name' => 'Draco',
  'last_name' => 'Malfoy',
  'age' => 16
  })

student3 = Student.new( {
'house_id' => 3,
  'first_name' => 'Luna',
  'last_name' => 'Lovegood',
  'age' => 15
 })

student4 = Student.new( {
  'house_id' => 4,
 'first_name' => 'Newt',
 'last_name' => 'Scamander',
 'age' => 18
 })

 house1.save()
 house2.save()
 house3.save()
 house4.save()

 student1.save()
 student2.save()
 student3.save()
 student4.save()
