class RemoveTitleDescriptionImageUrlFromSubOrg < ActiveRecord::Migration[5.0]
  def change
    remove_column :subscription_organizations, :title
    remove_column :subscription_organizations, :description
    remove_column :subscription_organizations, :image_url
  end
end
