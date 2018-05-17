#Application class where your page objects are stored and called from once initialized.
class Application
  attr_reader :pages

  def initialize
     @pages = {}
  end

  def root
    @pages[:root] ||= RootPage.new
  end

  def submit
    @pages[:submit] ||= SubmitPage.new
  end

  def home
    @pages[:home] ||= HomePage.new
  end
  
end