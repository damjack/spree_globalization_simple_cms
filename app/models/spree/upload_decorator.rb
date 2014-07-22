Spree::Upload.class_eval do
  translates :title, :presentation, :permalink, :fallbacks_for_empty_translations => true

  attr_accessible :translations, :translations_attributes
  accepts_nested_attributes_for :translations
end
