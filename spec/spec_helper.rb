require 'library'

RSpec.configure do |config|
  config.fuubar_progress_bar_options = { :format => 'My Fuubar! <%B> %p%% %a' }
end