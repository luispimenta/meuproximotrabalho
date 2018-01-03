# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file .env file.

user = User.new(:email => "admin@admin.com", :password => "123mudar", :password_confirmation => "123mudar", :name => "admin", :type_user => 2, admin: true)
user.skip_confirmation!
user.save

user = User.new(:email => "user@user.com", :password => "123mudar", :password_confirmation => "123mudar", :name => "user", :type_user => 1, admin: false)
user.skip_confirmation!
user.save