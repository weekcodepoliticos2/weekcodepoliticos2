FactoryBot.define do
	factory :politician do
 		api_id       { '12345' }
  	name         { FFaker::Lorem.name }
  	party 			 { 'PROS'}
 	end
end
