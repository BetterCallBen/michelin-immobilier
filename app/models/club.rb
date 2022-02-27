class Club < ApplicationRecord
  has_many :clients, dependent: :destroy
  has_many :users, dependent: :destroy

  has_one_attached :bg_image
  has_one_attached :bg_image_phone
  has_one_attached :left_logo
  has_one_attached :right_logo

  validates :name, presence: true
end
