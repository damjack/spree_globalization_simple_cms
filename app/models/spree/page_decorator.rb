Spree::Page.class_eval do
  LANG_CMS = Spree::Config[:locales].split(",").collect {|l| l.to_sym} rescue I18n.available_locales
  translates :name, :slug, :tag_title, :meta_description, :meta_keywords, :description, :content, :fallbacks_for_empty_translations => true
  
  globalize_accessors :locales => LANG_CMS, :attributes => [:name, :slug, :tag_title, :meta_description, :meta_keywords, :description, :content]
  
  attr_accessible :translations_attributes,  :name_attributes, :slug_attributes, :tag_title_attributes, :meta_description_attributes, :meta_keywords_attributes, :description_attributes, :content_attributes
  accepts_nested_attributes_for :translations
  
  extend ::FriendlyId
  friendly_id :name, :use => [:slugged, :globalize]
  
  
  
end