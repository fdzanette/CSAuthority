class Message < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :year, presence: true
  validates :level, presence: true
  validates :sport, presence: true

end
