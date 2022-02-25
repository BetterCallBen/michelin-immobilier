class Club < ApplicationRecord
  has_many :clients, dependent: :destroy
  has_many :users, dependent: :destroy

  has_one_attached :bg_image
  has_one_attached :bg_image_phone

  validates :name, presence: true

end
