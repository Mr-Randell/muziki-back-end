class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :genre
      t.integer :year_of_release

      t.timestamps
    end
  end
end
