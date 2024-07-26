require 'test_helper'


class SpreadsheetOnRailsTest < ActiveSupport::TestCase
  test "xls mime type" do
    assert_equal "application/xls", Mime[:xls].to_s
  end

  test "xls sym should be xls" do
    assert_equal :xls, Mime[:xls].to_sym
  end

end
