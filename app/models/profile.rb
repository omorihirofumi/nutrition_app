class Profile < ApplicationRecord
  belongs_to :user
  validates :birthday, presence: true, length: { minimum: 8, maximum: 8 }
  validates :sex, presence: true
  validates :height, presence: true
  validates :weight, presence: true
end
