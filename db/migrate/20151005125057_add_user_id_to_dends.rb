class AddUserIdToDends < ActiveRecord::Migration
  def change
    add_column :sends, :user_id, :integer
  end
end
