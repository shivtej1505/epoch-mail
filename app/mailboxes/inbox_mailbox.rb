class InboxMailbox < ApplicationMailbox
  def process
    puts mail
  end
end
