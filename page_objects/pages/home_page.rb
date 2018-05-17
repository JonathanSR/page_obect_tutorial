require_relative "../sections/current_sprint_section"

class HomePage < SitePrism::Page 
  set_url "https://vsa-autos.herokuapp.com/home"
  set_url_matcher %r{vsa-autos.herokuapp.com/home}

  element :submit, "#main-submit"
  section :current_sprint, CurrentSprintSection, ".current-autos"
end