require 'rubygems'
require 'mechanize'
require 'nokogiri'
require 'json'

agent = Mechanize.new
	a = agent.post('http://localhost:3000/history_thermostats.json',{
			"history_thermostat[temperature]" => 10, 
			"history_thermostat[humidity]" => 10,
			"history_thermostat[energy]" => 10,
			 serial: '11', #numero serial del termostato
			 mail: 'user2@gmail.com' , pass: '13245678' #usuario y contraseña del dueño del termostato
			})