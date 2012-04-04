class KoalaController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.xls { render :xls => "koalatastic"}
    end
  end

  def another
    render :xls => "contents", :template => "koala/index"
  end
end
