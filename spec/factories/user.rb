FactoryBot.define do

  factory :user do
    name "Joe"
    sequence :email do |e|
      "#{rand(1000000000000)}@gmail.com"
    end
    password "rotalize"
  end

end
