class GuessesController < ApplicationController
  def index
  	@person = Person.new
  end

  def new
  	# @person = Person.new
  end

  def create
  	#if guess was correct, save person to database plus gender
  	# @person = Person.find_by(person_params)

  	if @person = Person.where(:conditions => person_params)?
  		#increase a counter
  		@gender = @person.gender

  		redirect_to guess_path

  	else
  		# p "inside the ELSE statement"
  		@gender = ['male', 'female'].sample
  		@person = Person.create(person_params, gender: @gender)
  		
  		redirect_to root_path

  	end

  end

  # def is_female?
  # 	@gender = 'female'
  # end

  # def is_male?
  # 	@gender = 'male'
  # end


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

