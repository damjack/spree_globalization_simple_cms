Spree::Upload.class_eval do
  translates :title, :presentation, :permalink
  attr_accessible :translations, :translations_attributes
  accepts_nested_attributes_for :translations
end
