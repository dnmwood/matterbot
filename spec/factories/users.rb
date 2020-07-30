FactoryBot.define do
  factory :user do
    first_name { "David" }
    last_name { "Matterbot" }
    email { "david@matterbot.com" }
    password { "password123" }
    password_confirmation { "password123" }
    status { "active" }
  end
end