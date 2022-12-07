class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :country_of_origin
      t.integer :age

      t.timestamps
    end
  end
end
