Doctor.create([
  { id: '1', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name},
  { id: '2', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name},
  { id: '3', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name},
  { id: '4', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name},
  { id: '5', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name}
])

Patient.create([
  { id: '1', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name},
  { id: '2', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name},
  { id: '3', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name},
  { id: '4', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name},
  { id: '5', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name}
])

Appointment.create([
  { id: '1', doctor_id: Faker::Number.between(1, 5), patient_id: Faker::Number.between(1, 5), appointment_date: Faker::Date.forward(23), appointment_time: Faker::Time.between(DateTime.now - 1, DateTime.now)},
  { id: '2', doctor_id: Faker::Number.between(1, 5), patient_id: Faker::Number.between(1, 5), appointment_date: Faker::Date.forward(23), appointment_time: Faker::Time.between(DateTime.now - 1, DateTime.now)},
  { id: '3', doctor_id: Faker::Number.between(1, 5), patient_id: Faker::Number.between(1, 5), appointment_date: Faker::Date.forward(23), appointment_time: Faker::Time.between(DateTime.now - 1, DateTime.now)},
  { id: '4', doctor_id: Faker::Number.between(1, 5), patient_id: Faker::Number.between(1, 5), appointment_date: Faker::Date.forward(23), appointment_time: Faker::Time.between(DateTime.now - 1, DateTime.now)},
  { id: '5', doctor_id: Faker::Number.between(1, 5), patient_id: Faker::Number.between(1, 5), appointment_date: Faker::Date.forward(23), appointment_time: Faker::Time.between(DateTime.now - 1, DateTime.now)}
  ])

  puts "Dr. Pepper's Office Now Seeded"
