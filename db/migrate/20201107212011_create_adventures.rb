class CreateAdventures < ActiveRecord::Migration[6.0]
  def change
    create_table :adventures do |t|
      t.integer :player_id
      t.integer :character_id

      t.timestamps
    end
  end
end
