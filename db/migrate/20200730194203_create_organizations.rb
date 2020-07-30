class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.belongs_to :cause, foreign_key: true
      t.string :title
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
