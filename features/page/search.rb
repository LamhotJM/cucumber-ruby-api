class SearchPage < SitePrism::Page
  path = "/login"
  set_url(path)

  element :search_field,                  'input[name="q"]'

  def search(key)
    self.search_field.send_keys(key, :enter)
  end

end
