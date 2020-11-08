class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :position
  belongs_to_active_hash :team

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
