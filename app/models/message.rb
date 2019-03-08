class Message < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true, numericality: { only_integer: true }
  validates :year, presence: true, numericality: { only_integer: true }
  validates :level, presence: true
  validates :sport, presence: true

end
