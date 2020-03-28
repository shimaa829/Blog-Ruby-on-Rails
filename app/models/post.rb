class Post < ApplicationRecord
    validates :title, :content , presence: true
    validates :title, uniqueness: true
    has_many :comments , dependent: :destroy
    belongs_to :user

end
