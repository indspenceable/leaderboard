class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.references :player, :null => false
      t.references :match, :null => false
      t.boolean :winner, :null => false

      t.timestamps
    end
    add_index :participants, [:player_id, :match_id], unique: true, name: 'index_on_player_id_and_match_id'
  end
end
