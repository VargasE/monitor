class Thermostat < ActiveRecord::Base
	belongs_to :user
	has_many :history_thermostats
end
