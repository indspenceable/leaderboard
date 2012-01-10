class AddUserIdToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :user_id, :integer
  end
end
