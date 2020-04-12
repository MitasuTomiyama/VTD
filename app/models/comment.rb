class Comment < ApplicationRecord


    #親comment
    has_many :comments, dependent: :destroy

    #Userの子モデル
    belongs_to :user

    #artの子モデル
    belongs_to :art

    #親commentの子モデル
    belongs_to :comment

end
