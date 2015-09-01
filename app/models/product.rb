class Product < ActiveRecord::Base
	belongs_to :category
	 has_attached_file :image, styles: { large: "400x400>",medium: "200x200>", thumb: "100x100>" },
	 :default_url => '/images/userPic.png'
	 validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	has_many :comments, dependent: :destroy
	validates_presence_of :title
	validates_presence_of :price

	ratyrate_rateable 'quality'
end
