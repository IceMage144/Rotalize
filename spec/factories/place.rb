FactoryBot.define do

  factory :place do
      name "Bob's bistro"
      placetype 0
      opentime Time.now
      closetime Time.now
      img "bob"
      description "A nice place to visit"
      address "Rua do Matão 1010"
      price 12.00
      local
      days {[FactoryBot.create(:day), FactoryBot.create(:dooms)]}
  end

  factory :restaurant, class: Place do
      name "Bob's bistro 2"
      placetype 0
      opentime Time.now
      closetime Time.now
      img "bob2"
      description "A nice place to visit too"
      address "Rua do Matão 1011"
      price 12.00
      local
      days {[FactoryBot.create(:day), FactoryBot.create(:dooms)]}
  end

end
