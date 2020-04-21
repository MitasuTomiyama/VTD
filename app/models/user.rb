class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # CarrierWaveを使う宣言
  mount_uploader :image, ImageUploader
  # フェイバリットの親モデル
  has_many :favorites, dependent: :destroy
end
