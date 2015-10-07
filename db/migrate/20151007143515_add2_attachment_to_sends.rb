class Add2AttachmentToSends < ActiveRecord::Migration
  def self.up     
    change_table :sends do |t|  
      t.has_attached_file :image     
    end 
  end 
   
  def self.down   
    drop_attached_file :sends, :image   
  end 
end
