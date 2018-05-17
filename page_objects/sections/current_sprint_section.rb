class CurrentSprintSection < SitePrism::Section 
  elements :feature, ".feature-data"

  def assert_new_feature(name)
    feature.find{|record| record.text == name}
  end 

end