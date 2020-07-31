module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :email, String, null: false
    field :status, String, null: false
    field :subscription, Types::SubscriptionType, null: true

    # Methods
    field :full_name, String, null: false

    def full_name
      object.full_name
    end
  end
end
