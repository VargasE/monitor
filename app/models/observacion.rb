class Observacion < ActiveRecord::Base
  belongs_to :issue
before_create :begin_like
	def begin_like
		self.like=0
	end


end
