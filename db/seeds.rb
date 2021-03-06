# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [{:username => 'Santoshi', :email => 'santoshi.nitya@gmail.com', :password => 'hello',:petid => 1, :first_name => 'santoshi', :last_name => 'devata',:securityQuestion=>'What is my name', :securityAnswer=>'Santoshi', :password_confirmation =>'hello'},
         {:username => 'Gayathri', :password => 'signal1', :petid => 2, :password_confirmation =>'signal1'},
  	 ]

pets = [{:id => 1, :petname => 'Django', :breed => 'labrador', :color => 'grey', :dob => '2014-01-14', :interest => 'Stroll', :description => 'Puppy', :ownerfname => 'Santoshi', :ownerlname => 'Nithya', :gender => 'Male'},
        {:id => 2, :petname => 'Tiger', :breed => 'labrador', :color => 'white', :dob => '2014-03-14', :interest => 'Stroll', :description => 'Puppy', :ownerfname => 'Gayathri', :ownerlname => 'Sarathy', :gender => 'Male'}
			]
poms = [{:id => 1 },]

users.each do |user|
  User.create!(user)
end

pets.each do |pet|
  Pet.create!(pet)
end

#poms.each do |pom|
#    PetOfMonth.create!(pom)
#end
