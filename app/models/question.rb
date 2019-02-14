class Question < ApplicationRecord

	belongs_to :user
    has_many :question_comments

    validates :title, :body, presence: true
    class Event < ActiveRecord::Base 
     Language = ['C++','C#','Java','Python','Ruby'] 
end 
end
