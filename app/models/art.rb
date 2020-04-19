class Art < ApplicationRecord

    #Artistの子モデル
    belongs_to :artist

    #Likeモデルの親
    has_many :favorites, dependent: :destroy

    #Commentモデルの親
    has_many :comments, dependent: :destroy


    def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end

end
