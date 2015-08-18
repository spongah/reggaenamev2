class Bandname < ActiveRecord::Base
	validates :bandname, presence: true, uniqueness: true, length: { maximum: 50 }
end
