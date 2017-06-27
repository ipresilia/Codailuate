User.destroy_all
Batch.destroy_all
Student.destroy_all
# Color.destroy_all

test_user = User.create(email: "test@test.com", password: "abc123")

student = Student.create(full_name: "test_student1", picture: "http://res.cloudinary.com/dmj1w2it5/image/upload/v1496051293/sample.jpg", last_evaluation: "red")

test_batch = Batch.create(name: "Batch 101", start_to_end: "June 27th to June 27th 2017" )
