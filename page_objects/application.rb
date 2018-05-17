class Application
  attr_reader :pages

  def initialize
     @pages = {}
  end

  def submit
    @pages[:submit] ||= SubmitPage.new
  end
end