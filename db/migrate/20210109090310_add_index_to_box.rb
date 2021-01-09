class AddIndexToBox < ActiveRecord::Migration[6.1]
  def change
    add_index :boxes, :email, unique: true
  end
end
