class RemoveGameNamesAndCreateCorrespondingGameAliases < ActiveRecord::Migration
  def up
    Game.all.each do |game|
      GameAlias.create(game_id: game.id, name: game.name, primary: true)
    end
    remove_column :games, :name
  end

  def down
    add_column :games, :name, :string
    Game.all.each do |game|
      name = GameAlias.where(:game_id => game.id).first.name
      game.update_attributes!(name: name)
    end
  end
end
