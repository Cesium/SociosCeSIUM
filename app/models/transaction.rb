class Transaction < ActiveRecord::Base
	belongs_to :company
	belongs_to :category
	attr_accessible :scanning
  has_attached_file :scanning :default_url => "/images/:style/missing.png"

end
