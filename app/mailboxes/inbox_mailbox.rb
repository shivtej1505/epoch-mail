class InboxMailbox < ApplicationMailbox
  def process
    to_list = mail.to
    Box.where(email: to_list).each do |box|
      box.box_mails << BoxMail.new(inbound_mail_id: @inbound_email.id)
      box.save!
    end
  end
end
