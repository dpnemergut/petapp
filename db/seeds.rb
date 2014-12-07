# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [{:username => 'Santoshi', :email => 'santoshi.nitya@gmail.com', :password => 'hello',:petid => 'p01'},
         {:username => 'Gayathri', :password => 'signal1', :petid => 'p02'},
  	 ]

pets = [{:petid => 'p01', :petname => 'Django', :breed => 'labrador', :color => 'grey', :dob => '2014-01-14', :interest => 'Stroll', :description => 'Puppy', :ownerfname => 'Santoshi', :ownerlname => 'Nithya', :gender => 'Male'},
        {:petid => 'p02', :petname => 'Tiger', :breed => 'labrador', :color => 'white', :dob => '2014-03-14', :interest => 'Stroll', :description => 'Puppy', :ownerfname => 'Gayathri', :ownerlname => 'Sarathy', :gender => 'Male'}
			]
poms = [{:petid => 'p01'},]

users.each do |user|
  User.create!(user)
end

pets.each do |pet|
	Pet.create!(pet)
end

#poms.each do |pom|
#    PetOfMonth.create!(pom)
#end
