module Types
  class QueryType < Types::BaseObject
    field :users, [Types::UserType], null: false # get all users

    def users
      User.all
    end

    field :user, Types::UserType, null: false do # grab user
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end
  end
end
