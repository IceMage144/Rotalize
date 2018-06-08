FactoryBot.define do

  factory :trip do
    user
    name "My dream trip"
    beginning Date.parse("12/12/2012")
    duration 2
  end

end
