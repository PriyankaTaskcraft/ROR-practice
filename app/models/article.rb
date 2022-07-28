class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
    has_and_belongs_to_many :courses
	validates :title, presence: true,
                    length: { minimum: 5, maximum: 100, too_long: "%{count} characters is the maximum allowed", too_short: "%{count} characters is the minimum allowed"}, uniqueness: true, format: { with: /\A[a-zA-z]+\z/, message: 'only letters are allowed' }
    validates :text, presence: true,
                    length: { minimum: 5 }
    

    
    # validates :title, 

    # validates :size, inclusion: { in: %w(small medium large),
    # message: "%{value} is not a valid size" }, allow_nil: true

    # validate :validate_age
    # before_create :greeting_message

    # def greeting_message
    #     puts "Hey! I will run before you create an object!"
    # end

    #if one line of content
    before_create do
        puts "Hey! I will run before you create an object!"
    end

    after_initialize do |article|
        puts "You have initialized an object!"
    end
     
    after_find do |article|
        puts "You have found an object!"
    end

    after_touch do |article|
        puts "You have touched an object"
    end

    #custom validation msg example
    def validate_age
        if self.date_of_birth.present?
            age = Date.today.year - self.date_of_birth
            if age < 15
                errors.add(:age, 'Please enter age grater than 15')
            end
        end
    end

    

end
