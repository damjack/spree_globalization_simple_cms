Spree::Page.class_eval do
  translates :name, :permalink, :meta_description, :meta_keywords, :body, :link,
             :fallbacks_for_empty_translations => true
  
  attr_accessible :translations, :translations_attributes
  accepts_nested_attributes_for :translations
end