class Organization < ApplicationRecord
  belongs_to :cause

  has_many :subscription_organizations
  has_many :subscriptions, through: :subscription_organizations
end
