class RootPage < SitePrism::Page
  #sets your pages url to load 
  set_url 'https://vsa-autos.herokuapp.com'

  #sets your pages url to assert if it is loaded and or exists
  set_url_matcher %r{vsa-autos.herokuapp.com}

  #Element that belong to our Root page
  #Take two arguments, name and locator
  element :sign_in, "#sign_in"
  element :input_name, "input[type='email']"
  element :next_button, "#identifierNext"
  element :input_password, "input[type='password']"
  element :password_next_button, "#passwordNext"
end