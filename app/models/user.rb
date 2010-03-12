class User < ActiveRecord::Base
  has_many :links, :foreign_key => 'person_1_id'
end
