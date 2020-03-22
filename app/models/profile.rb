class Profile < ApplicationRecord
  belongs_to :user
  validates :birthday, presence: true
  validates :sex, presence: true
  validates :height, presence: true
  validates :weight, presence: true
end
