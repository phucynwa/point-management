module CoursesHelper
  def full_school_year year
    year.to_s << " - " << (year + 1).to_s
  end

  def full_semester semester
    semester.name + " (" + full_school_year(semester.school_year.year) + ")"
  end

  def full_xlsx_name course
    course.name << "-" << course.lecture.name.gsub(' ', '-')
  end
end
