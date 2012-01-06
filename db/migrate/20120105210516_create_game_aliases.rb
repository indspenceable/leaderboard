class CreateGameAliases < ActiveRecord::Migration
  def change
    create_table :game_aliases do |t|
      t.string :name
      t.integer :game_id
      t.boolean :primary

      t.timestamps
    end
    add_index :game_aliases, [:game_id, :primary], unique: true, name: 'unique_index_on_game_id_and_primary'
    add_index :game_aliases, :name, unique: true, name: 'unqiue_index_on_names'
  end
end
