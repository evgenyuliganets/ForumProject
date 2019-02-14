class Question < ApplicationRecord

	belongs_to :user
    has_many :question_comments

    validates :title, :body, presence: true
  
end
