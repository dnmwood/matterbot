FactoryBot.define do
    factory :subscription do
      { amount: 1234 }
  
      association :user
    end
  end