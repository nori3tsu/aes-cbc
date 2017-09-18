require "spec_helper"

RSpec.describe AES::CBC do
  it "has a version number" do
    expect(AES::CBC::VERSION).not_to be nil
  end

  it "can encrypt and decrypt text" do
    key = AES::CBC.generate
    iv = AES::CBC.generate

    hex = AES::CBC.encrypt(key, iv, 'hello')
    expect(hex).not_to be nil

    text = AES::CBC.decrypt(key, iv, hex)
    expect(text).to eq('hello')
  end
end
