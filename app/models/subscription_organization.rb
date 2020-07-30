class SubscriptionOrganization < ApplicationRecord
  belongs_to :subscription
  belongs_to :organization

  delegate :title, :description, to: :organization
end
