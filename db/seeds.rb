# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create! name: "Phung Thi An",
  email: "admin@gmail.com",
  role: 1,
  password: "123123",
  password_confirmation: "123123"

User.create! name: "Le Hong Phuc",
  email: "lhphuc.ynwa@gmail.com",
  code: 15021472,
  role: 0,
  password: "123123",
  password_confirmation: "123123"

User.create! name: "Nguyen Thi Thanh Huyen",
  email: "thanhhuyen.khxhnv@gmail.com",
  code: 15021368,
  role: 0,
  password: "123123",
  password_confirmation: "123123"

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

Lecture.create! name: "Tin hoc co so 4"

Lecture.create! name: "Lap trinh nang cao"

Lecture.create! name: "Dai so"

Lecture.create! name: "Giai tich 1"

Lecture.create! name: "Tri tue nhan tao"

Course.create! name: "INT5001",
  user_id: 1,
  lecture_id: 5,
  semester_id: 1

Course.create! name: "INT5003",
  user_id: 1,
  lecture_id: 2,
  semester_id: 2

Course.create! name: "INT2431",
  user_id: 1,
  lecture_id: 1,
  semester_id: 2

Course.create! name: "INT2301",
  user_id: 1,
  lecture_id: 3,
  semester_id: 2

Course.create! name: "INT5306",
  user_id: 1,
  lecture_id: 4,
  semester_id: 2

Learning.create! user_id: 2,
  course_id: 1

Learning.create! user_id: 2,
  course_id: 2

Learning.create! user_id: 2,
  course_id: 3

Learning.create! user_id: 2,
  course_id: 4
