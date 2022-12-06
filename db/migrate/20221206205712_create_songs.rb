class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.text :title
      t.string :genre
      t.integer :age

      t.timestamps
    end
  end
end
