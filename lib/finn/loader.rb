
require 'finn/project_loader'

module Finn

  module Loader
  def self.load( filename )
    Kernel::load( filename )
  end
end

end
