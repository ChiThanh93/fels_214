User.create!(name: "Example User",
  email: "admin@gmail.com",
  password: "password",
  password_confirmation: "password",
  is_admin: true)

20.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.com"
  password = "password"
  password_confirmation = "password"
  User.create!(name: name,
    email: email,
    password: password,
    password_confirmation: password_confirmation,
    is_admin: false)
end

users = User.all
user  = users.first
following = users[2..20]
followers = users[3..15]
following.each {|followed| user.follow(followed)}
followers.each {|follower| follower.follow(user)}

