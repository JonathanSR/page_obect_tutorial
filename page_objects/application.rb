class Application
  attr_reader :pages

  def initialize
     @pages = {}
  end

  def root
    @pages[:root] ||= RootPage.new
  end
end