class BoxMail < ApplicationRecord
  belongs_to :box
  belongs_to :inbound_mail
end
