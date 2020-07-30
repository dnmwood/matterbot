FactoryBot.define do
    factory :subscription_organization do
      association :subscription
      association :organization
    end
  end