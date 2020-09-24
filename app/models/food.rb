class Food < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :allergy,    optional: true
  belongs_to :doner ,   optional: true
  has_many :destinations
  has_one_attached :image

  with_options presence: true do
    validates :name
    validates :image
    validates :expriation_date
    validates :amount
    validates :count
  end

  def self.search(search)
    if search != ""
      Food.where('name LIKE(?)',"%#{search}%")
    else
      Food.all
    end
  end

end
