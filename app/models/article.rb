class Article < ActiveRecord::Base
    validates :title, presence: true, length: {minimum: 3, maximum: 50}
    validates :description, presence: true, length:{ minimum: 10, maximum: 300}
    validates :categories, presence: true, length:{ minimum: 1, maximum: 300}
    validates :locations, presence: true, length:{ minimum: 1, maximum: 300}
end       