Spree::Blog.class_eval do
  translates :name, :slug, :tag_title, :meta_description, :meta_keywords, :description, :content, :fallbacks_for_empty_translations => true
  LANG = Spree::Config[:locales].split(",").collect {|l| l.to_sym} rescue I18n.available_locales
  globalize_accessors :locales => LANG, :attributes => [:name, :slug, :tag_title, :meta_description, :meta_keywords, :description, :content]
  
  extend ::FriendlyId
  friendly_id :name, :use => [:slugged, :globalize]
  
end
