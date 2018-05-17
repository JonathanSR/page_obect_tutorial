#cucumber hook that launches our Application class before each scenario
Before do |scenario|
  @app ||= Application.new
end

