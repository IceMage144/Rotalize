FactoryBot.define do

  factory :user do
    name "Joe"
    sequence :email do |e|
      "#{e}@gmail.com"
    end
    password "rotalize"
  end

end
