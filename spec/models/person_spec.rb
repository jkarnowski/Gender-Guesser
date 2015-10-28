require 'rails_helper'

RSpec.describe Person, type: :model do

	let(:person) {Person.new(height: "65", weight: "166")}

	it 'is invalid without a height' do

	end
	it 'is invalid without weight'
	it 'includes gender'
end




	validates :height, presence: true
	validates :weight, presence: true