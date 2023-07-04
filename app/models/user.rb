class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_one :jackpot
  has_many :reviews

  before_create do
    self.jackpot = Jackpot.create(value: 0)
  end
end
