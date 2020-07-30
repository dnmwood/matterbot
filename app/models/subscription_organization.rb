class SubscriptionOrganization < ApplicationRecord
  belongs_to :subscription
  belongs_to :organization
end
