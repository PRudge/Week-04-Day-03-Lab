require_relative('../db/sql_runner')

class Student

attr_reader :id
  attr_accessor :first_name, :last_name, :house_id, :age

  def initialize(options)
    @id = options['id'].to_i
    @house_id = options['house_id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @age = options['age'].to_i
  end

  def save()
    sql = "INSERT INTO students (
    house_id,
    first_name,
    last_name,
    age
    )
    VALUES
    (
    $1, $2, $3, $4
    )
    RETURNING * "
    values = [ @house_id, @first_name, @last_name, @age]
    student_data = SqlRunner.run(sql, values)
    @id = student_data.first()['id'].to_i
  end

  def house()
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [@house_id]
    house = SqlRunner.run(sql, values)
    result = House.new(house.first)
    return result
  end

  def self.all()
    sql = "SELECT * FROM students"
    students = SqlRunner.run(sql)
    result = students.map { |student| Student.new(student) }
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id = $1"
    values = [id]
    student = SqlRunner.run(sql, values)
    result = Student.new(student.first)
    return result
  end

end
