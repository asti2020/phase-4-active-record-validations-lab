class Post < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

    # def catagory_must_be_fiction_or_non_fiction
    #     if !["Fiction", "Non-Fiction"].include?(category)
    #         errors.add(:category, "must be Fiction or Non-Fiction")
    #     end
    # end
end
