class CreatePoliticians < ActiveRecord::Migration[5.2]
  def change
    create_table :politicians do |t|
      t.integer :api_id
      t.string :name
      t.string :party
      t.string :state

      t.timestamps
    end
  end
end
