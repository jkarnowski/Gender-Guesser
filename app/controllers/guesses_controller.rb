class GuessesController < ApplicationController
  def index
  	@persons = Person.all
  end

  def new
  end

  def create
    person = Person.new(person_params)
    p "person from params:"
    p person 

    check_height = person.height
    check_weight = person.weight

    find_person = Person.where("height = ? AND weight = ?", check_height, check_weight).sample
    p "find person in database:"
    p find_person

    if find_person.gender != nil
      p "inside the IF:"
      @guessing_gender = find_person.gender
    else
      p "inside the ELSE"
      gender = ["male", "female"].sample
      guessed_gender = Person.create(height: check_height, weight: check_weight, gender: gender)
      p guessed_gender.gender 
    end

  end


  private
  def person_params
    params.require(:person).permit(:height, :weight)
  end


end


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




    # if person == Person.where(height: check_height, weight: check_weight)
    #   if Person.where(gender != nil)
    #     p "inside IF IF"
    #     @existing_person_gender = person.gender
    #     p @existing_person_gender
    #   else
    #     gender = ["male", "female"].sample
    #     person.update_attributes(gender: gender)
    #     p person.gender
    #   end
    #   p "inside the IF, person: "
    #   p person
    #   redirect_to :back
    # else
    #   p "inside the ELSE, params: "
    #   p params
    #   redirect_to :back
    # end

    # find_gender_for_person = Person.where(height: person.height, weight: person.weight).sample
    # p find_gender_for_person.gender

    # redirect_to :back
