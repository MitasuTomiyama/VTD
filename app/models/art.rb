class Art < ApplicationRecord

    #Artistの子モデル
    belongs_to :artist

    #Likeモデルの親
    has_many :likes, dependent: :destroy

    #Commentモデルの親
    has_many :comments, dependent: :destroy
end
