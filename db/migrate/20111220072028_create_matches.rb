class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :game, :null => false

      t.timestamps
    end
  end
end
