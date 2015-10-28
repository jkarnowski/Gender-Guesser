class GuessesController < ApplicationController
  def index
  	@persons = Person.all 
  end

  def new
  end

  def create
    temporary_person = Person.new(person_params)

    height = person_params[:height]
    weight = person_params[:weight]

    p height 
    p 'person inside the CREATE'
    p temporary_person
    # p "going into the method........."

    # find_gender_for_height_weight
    temporary_person = Person.where({height: height, weight: weight}).sample

    if temporary_person.nil?
      p "inside the IF"
      p temporary_person
      p "*" * 100
      p params
      p "*" * 100
      gender = ["Female", "Male"].sample
      p "random gender: "
      p gender 
      @person = Person.create(weight: params[:weight], height: params[:height], gender: gender)
      p "inside IF and person is:"
      @person 
    else
      # gender = ["Female", "Male"].sample
      # gender = "MALESYYYYY"
      p "inside the ELSE:"
      p params
      @person = temporary_person
    end

    p "our person with GENDER IS:"
    @person
  end

  def find_gender_for_height_weight

    # check_height = person_params[:height]
    # check_weight = person_params[:weight]

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

# 

