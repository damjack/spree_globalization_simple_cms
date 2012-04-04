Spree::AppConfiguration.class_eval do
  LANG_CMS = Spree::Config[:locales].split(",").collect {|l| l.to_sym} rescue I18n.available_locales
  
  preference :locales, :string, :default => "it,en"
end
