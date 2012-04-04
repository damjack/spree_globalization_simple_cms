Spree::Upload.class_eval do
  translates :attachment_name, :attachment_alt, :fallbacks_for_empty_translations => true
  globalize_accessors :locales => LANG_CMS, :attributes => [:attachment_name, :attachment_alt]
  
end
