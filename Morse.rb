require_relative 'base'

class Morse
  @@KEY = { 'A' => '.-', 'B' => '-...', 'C' => '-.-.',
    "D" => "-..", "E" => ".", "F" => "..-.", "G" => "--.",
    "H" => "....", "I" => "..", "K" => "-.-", "L" => ".-..",
    "M" => "--", "N" => "-.", "O" => "---", "P" => ".--.",
    "Q" => "--.-", "R" => ".-.", "S" => "...", "T" => "-",
    "U" => "..-", "V" => "...-", "W" => ".--",
    "X" => "-..-", "Y" => "-.--", "Z" => "--.." }

  def self.code
    @@KEY
  end

  def self.encrypt message
    message.characters.map {|c| code.fetch(c)}.join " "
  end

  def self.decrypt message
    message.words.map {|w| code.key(w)}.join
  end
end

message = Message.new("SOS")

encrypted = Morse.encrypt(message)
puts encrypted

message = Message.new(encrypted)

decrypted = Morse.decrypt(message)
puts decrypted