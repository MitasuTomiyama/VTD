class Like < ApplicationRecord

    #Userの子モデル
    belongs_to :user

    #artの子モデル
    belongs_to :art
end
