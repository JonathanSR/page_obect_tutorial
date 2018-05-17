#Load path currently broken, it is suppose to require all page and section objects

current_path = File.expand_path('..', __FILE__)
$LOAD_PATH.unshift File.join(current_path, 'page_objects')
Dir.glob(File.join(current_path, '**', '*.rb')).each do |f|
  require f 
end