class Genre < ActiveRecord::Base
	has_many :games
	validates :name, length: { maximum: 32}, :presence => true
	validates :description, length: { maximum: 200}, :presence => true
end

