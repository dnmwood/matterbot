FactoryBot.define do
  factory :organization do
    { title: "BLM Canada" }
    { description: "The Canadian chapter for BLM." }

    association :cause
  end
end