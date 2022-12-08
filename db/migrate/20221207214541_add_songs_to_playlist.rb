class AddSongsToPlaylist < ActiveRecord::Migration[7.0]
  def change
    add_reference :songs, :playlist, foreign_key: true
  end
end
