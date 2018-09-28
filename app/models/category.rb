class Category < ApplicationRecord
  validates :name, presence: true
  belongs_to :parent, class_name: 'Category', required: false
  has_many :children, class_name: 'Category', foreign_key: 'parent_id'
end
