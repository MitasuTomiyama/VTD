class Artist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # artの親
  has_many :arts, dependent: :destroy

  # CarrierWaveを宣言
  mount_uploader :image, ImageUploader
  
end
