class Investment < ApplicationRecord
  belongs_to :user

  has_and_belongs_to_many :group

  validates :name, presence: true, length: { in: 2..25 }
  validates :amount, numericality: { only_float: true, greater_than_or_equal_to: 0 }
end
