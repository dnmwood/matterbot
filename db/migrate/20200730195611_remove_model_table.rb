class RemoveModelTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :models
  end
end
