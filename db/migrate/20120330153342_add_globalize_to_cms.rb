class AddGlobalizeToCms < ActiveRecord::Migration
  def up
    Spree::Page.create_translation_table!({:title => :string, :permalink => :string, :meta_description => :string, :meta_keywords => :string, :body => :text, :link => :string}, {:migrate_data => true})
    Spree::Blog.create_translation_table!({:title => :string, :permalink => :string, :meta_description => :string, :meta_keywords => :string, :body => :text, :link => :string}, {:migrate_data => true})
    Spree::Upload.create_translation_table!({:title => :string, :presentation => :text, :permalink => :string, :attachment_file_name => :string}, {:migrate_data => true})
    
    Spree::TaxonomyPost.create_translation_table!({:name => :string}, {:migrate_data => true})
    Spree::TaxonPost.create_translation_table!({:name => :string, :description => :text, :permalink => :string}, {:migrate_data => true})
  end
  
  def down
    Spree::Page.drop_translation_table!
    Spree::Blog.drop_translation_table!
    Spree::Upload.drop_translation_table!
    
    Spree::TaxonomyPost.drop_translation_table!
    Spree::TaxonPost.drop_translation_table!
  end
end
