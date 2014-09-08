class Manufacture < ActiveRecord::Base
  has_many :products, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :gross, presence: true
end
