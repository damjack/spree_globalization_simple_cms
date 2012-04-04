Spree::Page.class_eval do
  translates :name, :slug, :tag_title, :meta_description, :meta_keywords, :description, :content, :fallbacks_for_empty_translations => true
  globalize_accessors :locales => LANG_CMS, :attributes => [:name, :slug, :tag_title, :meta_description, :meta_keywords, :description, :content]
  
  extend ::FriendlyId
  friendly_id :name, :use => [:slugged, :globalize]
  
end