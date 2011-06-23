class Court < ActiveRecord::Base
	validates :name,  :presence => true
  	validates :title, :presence => true,
                  :length => { :minimum => 5 }
 
  	has_many :bookings	
end
