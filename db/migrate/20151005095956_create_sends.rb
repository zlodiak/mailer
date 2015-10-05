class CreateSends < ActiveRecord::Migration
  def change
    create_table :sends do |t|
      t.text :message

      t.timestamps null: false
    end
  end
end
