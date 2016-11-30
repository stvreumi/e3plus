class UserCourseship < ActiveRecord::Base
    #join-table
    belongs_to :user
    belongs_to :course
end
