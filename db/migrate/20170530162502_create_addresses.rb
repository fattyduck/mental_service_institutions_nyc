class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.integer :institution_id
      t.string :street
      t.string :city
      t.string :zip
      t.timestamps
    end
  end
end
