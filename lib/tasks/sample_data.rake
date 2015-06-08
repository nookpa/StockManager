namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    puts "populating"
    #=================== User #===================
    user_1 = User.create!(email:"admin@user.com", username: "admin", password:"qwertyuiop", name:"Admin", telephone:"0899999999")
  end
end
