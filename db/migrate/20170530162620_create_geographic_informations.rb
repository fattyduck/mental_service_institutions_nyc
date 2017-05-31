class CreateGeographicInformations < ActiveRecord::Migration[5.0]
  def change
    create_table :geographic_informations do |t|
      t.integer :institution_id
      t.string :longitude
      t.string :latitude
      t.timestamps
    end
  end
end
