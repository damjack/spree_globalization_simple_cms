Spree::StaticPage.class_eval do
  
  before_save :set_translates_slug
  
  def set_translates_slug
    LANG.each do |locale|
      I18n.with_locale(locale) do
        self.slug = self.name.parameterize
      end
    end
  end
  
end