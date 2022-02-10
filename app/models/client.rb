class Client < ApplicationRecord
  belongs_to :club

  validates :phone_number, presence: true
  validates :last_name, presence: true
end
