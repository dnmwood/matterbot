class Subscription < ApplicationRecord
  belongs_to :user

  has_many :subscription_organizations
  has_many :organizations, through: :subscription_organizations
end
