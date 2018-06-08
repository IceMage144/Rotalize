FactoryBot.define do

  factory :day do
    date Date.parse("13/12/2012")
    trip
  end

  factory :dooms, class: Day do
    date Date.parse("12/12/2012")
    trip
  end

end
