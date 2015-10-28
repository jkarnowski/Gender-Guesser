require 'spec_helper'
require 'rails_helper'

RSpec.describe Person, type: :model do

	before :each do
		@person = Person.new(height: '65', weight: '155', gender: 'male')
	end

	describe 'instantiation' do

		it 'instantiates a person' do
			expect(@person.height).to eq('65')
		end
	end

end

	# it 'is not valid without weight' do
	# 	FactoryGirl.build(:person, weight: nil)
	# 	expect(person).to be_valid
	# end