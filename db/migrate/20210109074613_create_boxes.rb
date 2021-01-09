class CreateBoxes < ActiveRecord::Migration[6.1]
  def change
    create_table :boxes do |t|
      t.string :email
      t.integer :status

      t.timestamps
    end
  end
end
