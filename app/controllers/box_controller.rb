class BoxController < ApplicationController
  def index
    @box = Box.generate
  end

  def show
    box = Box.find_by_slug(params[:slug])
    @mails = box.inbound_mails
  end
end
