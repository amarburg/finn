require 'test_helper'

require 'finn/loader'

class LoaderTest < Minitest::Test
  def test_load_file
    Finn::Loader.load( TestFinnFiles.first )

    assert_equal Finn::projects.length, 1
    assert_equal Finn::projects.first.name, "test"
  end

end
