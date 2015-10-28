##Guess Gender App

Guess Gender is a Rails app that takes in height (inches) and weight(lbs) and returns a guess at what your gender might be

Goal: that it becomes more accurate at guessing a person's gender over time

##System Requirements
- Ruby, 4.0 
- Rails, '4.2.3'

* Configuration

$ bundle install

* Database creation

- database: postgreSQL be sure to have postgresql installed
- run a migration
	$ bundle exec db:create
	$ bundle exec db:migrate
	$ bundle exec db:seed

##RUN the app
- $ rails s

- Head to localhost:3000

##Run the Tests 

$rspec spec/models

$rspec spec/controllers 



##User Story

- User enters height in inches and weight in pounds
- Guessing prediction will return gender, user confirms if the guess was correct or incorrect

###How does it work? 
- User enters height & weight
- Check to see if a person with that height & weight exists in the database. Take a random sample from collection
- Return gender from that sample as guessed gender
- User confirms if the gender is correct or not
- Add new person to the database with their height, weight and gender

