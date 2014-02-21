Password Mate
=============
A Gem to generate Strong Random Passwords for your applications. The gem would generate random password till it is strong enough.


Installation
==

In Rails 3+, add this to your Gemfile and run the bundle command.

  gem 'password_mate'

Usage
==

In your class -
 
    require 'password_mate'
    include PasswordMate

 There are mainly two helpers available for Password Mate usage.

    strong?(str)
    generate_random_password
    

Example
==

	class GeneratePassword
		require 'rubygems'
		require 'password_mate/password_mate.rb'

		include PasswordMate
	end

	puts GeneratePassword.new.strong?("Abcd@1")
	puts GeneratePassword.new.strong?("abcd")
	puts GeneratePassword.new.generate_random_password