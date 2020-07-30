class CreateSubscriptionOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :subscription_organizations do |t|
      t.belongs_to :subscription, foreign_key: true
      t.belongs_to :organization, foreign_key: true
      t.string :title
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
