require 'spec_helper'
require 'rails_helper'

RSpec.describe Person, type: :model do

	before :each do
		@testing = Person.new(height: '65', weight: '155', gender: 'male')
	end

	describe 'instantiation' do

		it 'instantiates a person' do
			expect(@testing.height).to eq('65')
		end
	end

	describe 'validations' do 

		it 'is not a valid person without weight' do
		person = FactoryGirl.build(:person, height: '67', weight: nil)
		expect(person).not_to be_valid
		end
	end

end

	# it 'is not valid without weight' do
	# 	FactoryGirl.build(:person, weight: nil)
	# 	expect(person).to be_valid
	# end