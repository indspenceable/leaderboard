class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :game, :null => false

      t.timestamps
    end
    add_index :matches, :game_id, name: 'index_on_game'
  end
end
