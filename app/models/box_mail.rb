class BoxMail < ApplicationRecord
  belongs_to :box
  belongs_to :inbound_mail, class_name: "ActionMailbox::InboundEmail"
end
