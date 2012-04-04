require 'test_helper'
class NavigationTest < ActionDispatch::IntegrationTest
  context "sending an xls file" do
    setup do
      visit koala_path
      click_link 'XLS'
    end

    should "set binary header" do
      assert_equal 'binary', headers['Content-Transfer-Encoding']
    end

    should "set correct filename" do
      assert_equal 'attachment; filename="koalatastic.xls"', headers['Content-Disposition']
    end

    should "set correct content type" do
      assert_equal 'application/xls', headers['Content-Type']
    end
  end

  context 'xls renderer uses the specified template' do
    setup do
      visit '/another.pdf'
    end

    should "set binary header" do
      assert_equal 'binary', headers['Content-Transfer-Encoding']
    end

    should "set correct filename" do
      assert_equal 'attachment; filename="contents.xls"', headers['Content-Disposition']
    end

    should "set correct content type" do
      assert_equal 'application/xls', headers['Content-Type']
    end
  end

  protected

  def headers
    page.response_headers
  end
end
