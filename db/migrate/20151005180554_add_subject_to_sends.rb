class AddSubjectToSends < ActiveRecord::Migration
  def change
    add_column :sends, :subject, :string
  end
end
