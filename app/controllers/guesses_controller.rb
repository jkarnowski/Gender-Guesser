class GuessesController < ApplicationController
  def index
  	@persons = Person.all
  end

  def new
    find_person
  end

  def find_person
    person = Person.new(height: params[:person][:height], weight: params[:person][:weight])

    check_height = person.height
    check_weight = person.weight

    find_person = Person.where("height = ? AND weight = ?", check_height, check_weight).sample

    if find_person == nil 
      gender = ["male", "female"].sample
      @person = Person.new(height: check_height, weight: check_weight, gender: gender)
    else
      @guessed_gender = find_person.gender
      @person = Person.new(height: check_height, weight: check_weight, gender: @guessed_gender)
    end

    return @person 

  end

  def create
    Person.create(person_params)
    redirect_to root_path
  end


  private
  def person_params
    params.require(:person).permit(:height, :weight, :gender)
  end


end


# PSEUDOCODE
#input
#height: 65 
#weight: 145

#output
#'male' or 'female'

#How does that happen? 

#receive input
#if height + weight combination exist in the database
	#ie 65, 145, female
	#return the gender

#else
	#ie 65, 145, female
	#and 65, 145, male
	#return a guess of 'male' or 'female'

#else
	#65, 145, female && 65, 145, male BOTH exist but different % of times true
	# return higher %