class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :genre_id
      t.string :description
      t.integer :release_year

      t.timestamps
    end
  end
end
