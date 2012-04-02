class AddGlobalizeToCms < ActiveRecord::Migration
  def up
    Spree::Page.create_translation_table!({:name => :string, :slug => :string, :tag_title => :string, :meta_description => :string, :meta_keywords => :string, :description => :text, :content => :text}, {:migrate_data => true})
    Spree::Blog.create_translation_table!({:name => :string, :slug => :string, :tag_title => :string, :meta_description => :string, :meta_keywords => :string, :description => :text, :content => :text}, {:migrate_data => true})
    Spree::Upload.create_translation_table!({:attachment_name => :string, :attachment_alt => :string}, {:migrate_data => true})
  end
  
  def down
    Spree::Page.drop_translation_table!
    Spree::Blog.drop_translation_table!
    Spree::Upload.drop_translation_table!
  end
end
