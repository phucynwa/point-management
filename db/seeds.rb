# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create! name: "Phung Thi An",
  email: "admin@gmail.com",
  code: 0,
  role: 1,
  birthday: Faker::Date.birthday(27, 45),
  password: "123123",
  password_confirmation: "123123"

User.create! name: "Vu Van Tuan",
  email: "boss@gmail.com",
  code: 1,
  role: 1,
  birthday: Faker::Date.birthday(27, 45),
  password: "123123",
  password_confirmation: "123123"

User.create! name: "Pham Van An",
  email: "andeptrai@gmail.com",
  code: 2,
  role: 1,
  birthday: Faker::Date.birthday(27, 45),
  password: "123123",
  password_confirmation: "123123"

User.create! name: "Tran Thi Hoa",
  email: "hoatran89@gmail.com",
  code: 3,
  role: 1,
  birthday: Faker::Date.birthday(27, 45),
  password: "123123",
  password_confirmation: "123123"


User.create! name: "Le Hong Phuc",
  email: "lhphuc.ynwa@gmail.com",
  code: 15021472,
  role: 0,
  birthday: Faker::Date.birthday(20, 22),
  password: "123123",
  password_confirmation: "123123"

User.create! name: "Nguyen Thi Thanh Huyen",
  email: "thanhhuyen.khxhnv@gmail.com",
  code: 15021368,
  role: 0,
  birthday: Faker::Date.birthday(20, 22),
  password: "123123",
  password_confirmation: "123123"

94.times do
  name_ = Faker::Name.unique.name_with_middle
  email = Faker::Internet.unique.user_name + "@gmail.com"
  code = Faker::Number.unique.number(8)
  User.create! name: name_,
  email: email,
  code: code,
  role: 0,
  birthday: Faker::Date.birthday(18, 24),
  password: "123123",
  password_confirmation: "123123"
end


SchoolYear.create! year: 2016

SchoolYear.create! year: 2017

SchoolYear.create! year: 2018


Semester.create! name: "Hoc ky I",
  school_year_id: 1

Semester.create! name: "Hoc ky II",
  school_year_id: 1

Semester.create! name: "Hoc ky I",
  school_year_id: 2

Semester.create! name: "Hoc ky II",
  school_year_id: 2

Semester.create! name: "Hoc ky I",
  school_year_id: 3

Semester.create! name: "Hoc ky II",
  school_year_id: 3

Lecture.create! name: "Tin học cơ sở 4", credits: 3

Lecture.create! name: "Lập trình nâng cao", credits: 2

Lecture.create! name: "Đại số", credits: 3

Lecture.create! name: "Giải tích 1", credits: 3

Lecture.create! name: "Trí tuệ nhân tạo", credits: 2


30.times do
  lecture_id = Random.rand(5) + 1
  user_id = Random.rand(4) + 1
  name_ = "INT" + lecture_id.to_s + "0" + Faker::Number.unique.number(2)
  semester_id = Random.rand(6) + 1
  Course.create! name: name_,
    user_id: user_id,
    lecture_id: lecture_id,
    semester_id: semester_id
end

(5..100).each do |user_id|
  courses_number = Random.rand(5) + 1
  (1..30).to_a.sample(courses_number).each do |course_id|
    Learning.create! user_id: user_id, course_id: course_id
  end
end
