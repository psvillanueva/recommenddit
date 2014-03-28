class User < ActiveRecord::Base
	# Added for routing issues. Username now corresponds to correct user page.
	self.primary_key = "username"
end
