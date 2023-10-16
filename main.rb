class Student
  def initialize(max_courses)
    @max_courses = max_courses
    @schedule = schedule.new({})
  end
end

  def remove_from_schedule(course, quarter_id)
    quarter = schedule.get_quarter(quarter_id)
    quarter.course_list.remove(course)
  end

  def add_to_schedule(course, quarter_id)
    quarter = schedule.get_quarter(quarter_id)
    q_course_list = quarter.course_list
    current_number_of_courses = course_list.current_number_of_courses
      if current_number_of_courses < MAX_COURSES do
        course_list.add(course)
    end
  end
end

class Schedule
  def initialize(quarters)
    @quarters = quarters
  end
  def get_quarter(quarter_id)
    for q in quarters
      if quarters[q] == quarter_id
        return q
      end
    end
  end
  def add_quarter(id,name)
    quarters.append(Quarter.new(id,name))
  end
end

class Quarter
  def initialize(id, name)
    @id=id
    @name=name
    @course_list = Course_list.new([])
  end
end

class Course_list
  def initialize(courses)
    @courses=courses
  end

  def remove(course)
    for c in courses
      if c == course
        courses.remove(c)
      end
    end
  end

  def current_number_of_courses()
    return courses.length()
  end

  def add(id,name)
    courses.append(Course.new(id,name))
  end
end
class Course
  def initialize(id,name)
    @id=id
    @name=name
  end
end
