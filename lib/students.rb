class Students

  def all
    [
      {name: "Bob", age: 10},
      {name: "Sue", age: 10},
      {name: "Greg", age: 15},
      {name: "Amanda", age: 8},
      {name: "Steve", age: 22},
    ]
  end

  def average_age
    all.inject(0) {|sum_of_ages, student| sum_of_ages + student[:age] } / all.length
  end

  def name_string
    all.reduce('') {|names, student| names + student[:name] + ' '}.strip
  end

  def find_first_older_than(age)
    all.detect {|student| student[:age] > age}
  end

  def any_older_than?(age)
    all.any? {|student| student[:age] > age}
  end

  def find_student(student_to_find)
    all.detect {|student| student == student_to_find}
  end

  def student_present?(student_to_find)
    all.include?(student_to_find)
  end

  def grouped_by_age
    grouped_by_age = {}
    all.each do |student|
      if grouped_by_age[student[:age]]
        grouped_by_age[student[:age]] << student[:name]
      else
        grouped_by_age[student[:age]] = [student[:name]]
      end
    end
    grouped_by_age
  end
end
