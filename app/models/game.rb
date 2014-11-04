class Game < ActiveRecord::Base
	belongs_to :genre
	validates :name, length: {maximum: 32}, :presence => true
	validates :genre_id, :presence => true
	validates :release_year, length: {maximum: 32}, :presence => true
    validates :release_year, :inclusion => { :in => 1900..2100, :message => "The year must be between 1900 and 2100" }, length: {maximum: 32}, :presence => true
mount_uploader :image, ImageUploader
end