FactoryBot.define do

  factory :place do
      name "Bob's bistro"
      placetype "Food place"
      opentime Time.now
      closetime Time.now
      img "bob"
      description "A nice place to visit"
      address "Rua do Matão 1010"
      local
  end

end
