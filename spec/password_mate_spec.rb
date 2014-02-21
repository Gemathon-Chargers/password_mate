require 'active_model'
require "password_mate"


describe PasswordMate do
  PasswordMate::SpecialCharacters.each do |sc|
      it "should return true when password is strong" do
        str = "aA1" + sc
        PasswordMate.strong?(str).should be_true
      end
  end

  it "should generate random password" do
    PasswordMate.generate_random_password.size == PasswordMate::PasswordLength
    PasswordMate.strong?(PasswordMate.generate_random_password).should be_true
  end
end