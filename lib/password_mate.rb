module PasswordMate
  extend self

  SpecialCharacters = %w(! @ # $ % ^ & + = * ( ) _ -)
  LowercaseLetters = ('a'..'z').to_a
  UppercaseLetters = ('A'..'Z').to_a
  Numbers = ('0'..'9').to_a
  PasswordLength = 8

  def strong?(str)
    return false if str && str.empty?
    return false unless str =~ Regexp.union(*SpecialCharacters)
    return false unless str =~ Regexp.union(*LowercaseLetters)
    return false unless str =~ Regexp.union(*UppercaseLetters)
    return false unless str =~ Regexp.union(*Numbers)
    true
  end

  def generate_random_password
    password = generate_random(PasswordLength) until strong?(password)
    password
  end

  private
  def generate_random(length)
    "".tap do |str|
      length.times { str << random_character }
    end
  end

  def random_character
    all_possible_characters.sample
  end

  def all_possible_characters
    SpecialCharacters + LowercaseLetters +
    UppercaseLetters + Numbers
  end

end