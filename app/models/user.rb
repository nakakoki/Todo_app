class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :position
  belongs_to_active_hash :team
  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages
  has_many :tasks


  with_options presence: true do
    validates :nickname
    validates :full_name
    validates :position_id
    validates :team_id
  end

  with_options numericality: { other_than: 1 } do
    validates :position_id
    validates :team_id
  end

end
