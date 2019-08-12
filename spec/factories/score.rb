FactoryBot.define do
	factory :score do
 		rating       	{ FFaker::AddressBR.building_number }
  	games_played  { FFaker::AddressBR.building_number }
  end
end