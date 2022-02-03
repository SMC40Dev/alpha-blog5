class Article < ApplicationRecord
    validates :title,  presence: true, length: {minimum: 4, maximum: 50}
    validates :description, presence: true, length: {minimum: 2, maximum: 100}
    # uniqueness: {
    #   # object = article object being validated
    #   # data = { model: "Article", attribute: "title", value: <article title> }
    #   message: ->(object, data) do
    #     "Hey #{object.title}, #{data[:value]} is already taken."
    #   end
    # }
    
end