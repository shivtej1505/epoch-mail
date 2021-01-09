class Box < ApplicationRecord
  has_many :box_mails
  has_many :inbound_mails, through: :box_mails

  DOMAIN = "lite.com"

  class << self
    def generate
      while true
        random_string = SecureRandom.hex[0..6]
        email = "#{random_string}@#{DOMAIN}"
        break if Box.find_by(email: email).nil?
      end
      Box.create(email: email)
    end
  end
end
