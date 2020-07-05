class Cipher
  attr_accessor :key

  def initialize(key)
    @key = key
  end

  def encrypt msg, key
    yield
  end

  alias decrypt encrypt
end

class Message
  attr_accessor :content

  def initialize(content)
    @content = content
  end

  def words
    @content.split
  end

  def characters
    @content.split(//)
  end

  def bytes
    @content.bytes
  end

  def reversed
    @content.reverse
  end
end

class Key
  attr_accessor :content

  def initialize(content)
    @content = content
  end

  def strong
    @content.length > 16
  end
end

class KeyGenerator
  def self.generate_of length
    return rand(length)
  end
end

module Locale
  class << self
    attr_accessor :alphabet

    def initialize()

    end
  end

  class English
    @@ALPHABET = ('A'..'Z').to_a
  end
end

# http://rumkin.com/tools/cipher/