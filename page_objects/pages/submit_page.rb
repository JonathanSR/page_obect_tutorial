class SubmitPage < SitePrism::Page 
  set_url "https://vsa-autos.herokuapp.com/autos/new"
  set_url_matcher %r{vsa-autos.herokuapp.com/autos/new}

  element :module, "#auto_vsa_id"
  element :number, "#auto_vzt"
  element :description, "#auto_feature"
  element :scenarios, "#auto_scenarios"
  element :add_auto_button, "input[type='submit']"
end