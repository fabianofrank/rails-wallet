class Group < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :investment

  validates :name, presence: true, length: { in: 2..25 }
  validates :icon, presence: true, length: { in: 2..25 }

  def icons
    @icons = ['🛫', '🏩', '❤️', '🏠', '🧘', '🏀', '🍕', '🎁', '🐕', '🧑🏼‍💻', '💅', '🛍️', '🍻', '🚗', '🛒']
  end
end
