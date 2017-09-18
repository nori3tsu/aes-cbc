require "aes/cbc/version"
require 'openssl'
require 'base64'
require 'securerandom'

module AES
  module CBC
    def self.encrypt(key, iv, text)
      cipher = OpenSSL::Cipher.new('aes-128-cbc')
      cipher.encrypt
      cipher.key = [key].pack('H*')
      cipher.iv = [iv].pack('H*')
      bin = ''
      bin << cipher.update(text)
      bin << cipher.final
      Base64.strict_encode64(bin)
    end

    def self.decrypt(key, iv, b64)
      cipher = OpenSSL::Cipher.new('aes-128-cbc')
      cipher.decrypt
      cipher.key = [key].pack('H*')
      cipher.iv = [iv].pack('H*')
      text = ''
      text << cipher.update(Base64.strict_decode64(b64))
      text << cipher.final
      text
    end

    def self.generate
      SecureRandom.hex(16)
    end
  end
end
