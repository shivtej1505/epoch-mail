class BoxController < ApplicationController
  def index
    @box = Box.generate
  end

  def mails
    box = Box.find_by(email: params[:email])
    @mails = box.inbound_mails
  end
end
