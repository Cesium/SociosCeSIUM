class Transaction < ActiveRecord::Base
	belongs_to :company
	belongs_to :category
	attr_accessor :scanning_file_name
  has_attached_file :scanning, :default_url => "/images/:style/missing.png"

end
