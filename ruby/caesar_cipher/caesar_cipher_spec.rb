

require 'caesar_cipher'

describe 'Caesar Cipher' do

  it "should reposition lowercase letters by giving shift" do
    caesar_cipher("hello", 2) == "jgnnq"
  end

  it "should reposition lowercase letters by giving shift" do
    caesar_cipher("HELLO", 2) == "JGNNQ"
  end

  it "should reposition letters by shift and retain letter casing" do
    caesar_cipher("HeLLo", 2) == "JeNNq"
  end

  it "should complete assignment sample test case" do
    caesar_cipher("What a string!", 5) == "Bmfy f xywnsl!"
  end
end
