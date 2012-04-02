Spree::Upload.class_eval do
  translates :attachment_name, :attachment_alt, :fallbacks_for_empty_translations => true
  LANG = Spree::Config[:locales].split(",").collect {|l| l.to_sym} rescue I18n.available_locales
  globalize_accessors :locales => LANG, :attributes => [:attachment_name, :attachment_alt]
  
end
