class TopsController < ApplicationController
  def index
    @today = Date.today.strftime('%Y年%m月%d日')
  end
end
