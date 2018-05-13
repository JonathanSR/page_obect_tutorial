class Application
  attr_reader :pages

  def initialize
     @pages = {}
  end

  def home
    @pages[:home] ||= HomePage.new
  end
end