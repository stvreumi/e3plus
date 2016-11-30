class Course < ActiveRecord::Base
    #many-to-many associations between users & courses
    has_many :user_courseships
    has_many :users, :through => :user_courseships
end
