class Tag < ApplicationRecord
    has_many :taggings, :dependent => :delete_all 
    has_many :articles, through: :taggings, :dependent => :delete_all 

    def to_s
        name
    end
end
