require_relative "../lib/student.rb"
require_relative "../lib/course.rb"
require_relative "../lib/student_course.rb"

Student.create(name: "Kara Danvers")
Student.create(name: "Clark Kent")
Student.create(name: "Peter Parker")
Student.create(name: "Diana Prince")
Student.create(name: "Bruce Wayne")
Student.create(name: "Stella Artwah")
Student.create(name: "Holly Akehla")
Student.create(name: "Domo Arigato")

Course.create(title: "Identity Obfuscation", release_dt: Date.today-120, sunset_dt: Date.today+365)
Course.create(title: "Costume Do's and Don'ts", release_dt: Date.today-120, sunset_dt: Date.today+365)
Course.create(title: "The Psychology of Being Super", release_dt: Date.today+60, sunset_dt: Date.today+365)
Course.create(title: "Choosing a Name", release_dt: Date.today+120, sunset_dt: Date.today+395)
Course.create(title: "Advanced Flying", release_dt: Date.today+60, sunset_dt: Date.today+465)
Course.create(title: "So You Say You Wanna Sidekick", release_dt: Date.today+120, sunset_dt: Date.today+395)
Course.create(title: "Avoiding the Pitfalls of Hero Worship", release_dt: Date.today+60, sunset_dt: Date.today+365)
Course.create(title: "You're From Where?", release_dt: Date.today+120, sunset_dt: Date.today+395)



StudentCourse.create(student_id: 1, course_id: 1, rating: 3)
StudentCourse.create(student_id: 2, course_id: 3, rating: 4)
StudentCourse.create(student_id: 3, course_id: 1, rating: 2)
StudentCourse.create(student_id: 4, course_id: 3, rating: 3)
StudentCourse.create(student_id: 1, course_id: 2, rating: 4)
StudentCourse.create(student_id: 2, course_id: 2, rating: 5)
StudentCourse.create(student_id: 1, course_id: 3, rating: 4)
StudentCourse.create(student_id: 4, course_id: 6, rating: 1)
StudentCourse.create(student_id: 6, course_id: 3, rating: 4)
StudentCourse.create(student_id: 7, course_id: 8, rating: 5)
StudentCourse.create(student_id: 6, course_id: 1, rating: 4)
StudentCourse.create(student_id: 7, course_id: 5, rating: 1)
StudentCourse.create(student_id: 8, course_id: 3, rating: 4)
StudentCourse.create(student_id: 1, course_id: 6, rating: 1)
StudentCourse.create(student_id: 2, course_id: 3, rating: 4)
StudentCourse.create(student_id: 2, course_id: 8, rating: 5)
StudentCourse.create(student_id: 1, course_id: 8, rating: 4)
StudentCourse.create(student_id: 4, course_id: 5, rating: 1)
StudentCourse.create(student_id: 3, course_id: 3, rating: 4)
