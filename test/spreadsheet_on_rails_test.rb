require 'test_helper'


class SpreadsheetOnRailsTest < ActiveSupport::TestCase
  test "xls mime type" do
    assert_equal "application/xls", Mime::XLS.to_s
  end

  test "xls sym should be xls" do
    assert_equal :xls, Mime::XLS.to_sym
  end

end
