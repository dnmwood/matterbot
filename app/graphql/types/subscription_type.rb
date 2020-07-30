module Types
  class SubscriptionType < Types::BaseObject
    field :id, ID, null: false
    field :amount, Integer, null: true
  end
end
