require 'library'
require_relative './helpers/helpers'

RSpec.configure do |config|
  config.fuubar_progress_bar_options = { :format => 'My Fuubar! <%B> %p%% %a' }
  config.include Helpers
end