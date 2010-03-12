class Link < ActiveRecord::Base
  belongs_to :person_2, :class_name => "User"
end
