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

  def sort_vietnamese
    vietnamese_symbols = "AĂÂBCDĐEÊGHIKLMNOÔƠPQRSTUƯVXY"
    word = "SUBSTRING_INDEX(users.name, ' ', -1)"
    sort = word
    sort << ", CASE"
    vietnamese_symbols.length.times do |index|
      sort << " WHEN #{word} LIKE '#{vietnamese_symbols[index]}%' THEN #{index + 1} \n"
    end
    sort << "END"
  end
end
