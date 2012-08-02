Spree::Upload.class_eval do
  LANG_CMS = Spree::Config[:locales].split(",").collect {|l| l.to_sym} rescue I18n.available_locales
  translates :attachment_name, :attachment_alt, :fallbacks_for_empty_translations => true
  globalize_accessors :locales => LANG_CMS, :attributes => [:attachment_name, :attachment_alt]
  
  attr_accessible :translations_attributes
  accepts_nested_attributes_for :translations
  
end
