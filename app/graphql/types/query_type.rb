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

    field :organizations, [Types::OrganizationType], null: false # get organizations
 
    def organizations
      Organization.all
    end

    field :organization, [Types::OrganizationType], null: false do
      argument :id, ID, required: true
    end

    def organization(id:)
      Organization.find(id)
    end

  end
end
