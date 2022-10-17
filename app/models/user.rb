class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :investments, dependent: :destroy
  has_many :groups, dependent: :destroy

  validates :name, presence: true, length: { in: 2..25 }

  def admin?
    role == 'admin'
  end
end
