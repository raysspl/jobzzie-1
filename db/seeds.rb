Registrant.destroy_all
User.destroy_all
Category.destroy_all
School.destroy_all

Registrant.create({
  email: "joe@mama.com"
})

school = School.create({
  name: "UCLA",
  zip_code: "90210"
})

categories = Category.create([
  { name: "Accounting" },
  { name: "Rocket Science" },
  { name: "Pizza Throwing" }
])

student = Student.create({
  name_first: "Joe",
  name_last: "Student",
  email: "joe@student.com",
  password: "123",
  password_confirmation: "123"
})

job = Job.create({
  title: "Pizza thrower",
  started_on: Date.today - 1.year,
  ended_on: Date.today - 4.months,
  student: student
})

study = Study.create({
  started_on: Date.today - 1.year,
  ended_on: Date.today - 4.months,
  did_graduate: false,
  major: "Underwater Basketweaving",
  minor: "Girls",
  school: school,
  student: student
})

employer = Employer.create({
  name_of_company: "Bob's Pizza",
  email: "bob@bobspizza.com",
  password: "123",
  password_confirmation: "123"
})

location = Location.create({
  street_1: "123 Elm St.",
  zip_code: "90401",
  employer: employer
})

opening = Opening.create({
  title: "Underwater basketweaver",
  starts_on: Date.today,
  description: "You know what it is.",
  employer: employer,
  location: location,
  categories: categories
})

