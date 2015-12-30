class User < ActiveRecord::Base
	validates :name, length: { in: 4..16 }
end
