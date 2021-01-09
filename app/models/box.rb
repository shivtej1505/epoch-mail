class Box < ApplicationRecord
  has_many :box_mails
  has_many :inbound_mails, through: :box_mails
end
