require 'spec_helper'

describe TextRazor do

  describe ".topics" do

    it "should make correct calls" do
      expect(TextRazor::Client).to receive(:topics).
        with('api_key', 'text', {})

      TextRazor.topics('api_key', 'text', {})
    end

  end

  describe ".entities" do

    it "should make correct calls" do
      expect(TextRazor::Client).to receive(:entities).
        with('api_key', 'text', {})

      TextRazor.entities('api_key', 'text', {})
    end

  end

  describe ".words" do

    it "should make correct calls" do
      expect(TextRazor::Client).to receive(:words).
        with('api_key', 'text', {})

      TextRazor.words('api_key', 'text', {})
    end

  end

  describe ".phrases" do

    it "should make correct calls" do
      expect(TextRazor::Client).to receive(:phrases).
        with('api_key', 'text', {})

      TextRazor.phrases('api_key', 'text', {})
    end

  end

  describe ".reset" do
    before :each do
      TextRazor.configure do |config|
        config.secure = false
      end
    end

    it "resets the configuration" do
      TextRazor.reset
      config = TextRazor.configuration
      expect(config.secure).to eq(true)
    end
  end

end
