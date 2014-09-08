class Product < ActiveRecord::Base
  belongs_to :manufacture
  validates :engine, uniqueness: true, presence: true
  validates :name, uniqueness: true, presence: true
  validates :tire, presence: true, length: {minimum: 6}
end
