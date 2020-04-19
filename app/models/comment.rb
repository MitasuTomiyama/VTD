class Comment < ApplicationRecord


    #親comment=>子commentモデル
    has_many :replies, class_name: 'Comment', foreign_key: 'comment_id', dependent: :destroy

    #親comment<=子commentモデル
    belongs_to :original_comment, class_name: 'Comment', foreign_key: 'comment_id', optional: true

    #Userの子モデル
    belongs_to :user

    #artの子モデル
    belongs_to :art

end
