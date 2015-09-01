class User < ActiveRecord::Base
	
     has_attached_file :image, styles: { large: "400x400>",medium: "200x200>", thumb: "100x100>" }
	 validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	
	ratyrate_rater
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
