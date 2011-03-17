class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string     :title
      t.string     :path
      
      t.string     :meta_title
      t.string     :meta_description
      t.string     :meta_keywords
      
      t.integer    :position, :default => 999
      
      t.timestamps
    end
    
  end

  def self.down
    drop_table :pages
  end
end
