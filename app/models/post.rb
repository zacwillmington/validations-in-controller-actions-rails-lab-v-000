class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :category, inclusion: {  in: %w(Fiction Non-Fiction)}
    validates :category, presence: true
    validates :content, length: { minimum: 100 }
end
