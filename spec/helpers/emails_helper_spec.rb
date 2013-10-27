require 'spec_helper'

describe EmailsHelper do
  describe "#is_email" do
    it 'returns false for malformed email' do
      expect(is_email?("dddd@ddd")).to be_false

    end

    it 'returns true for valid email' do
      expect(is_email?("dddd@ddd.com")).to be_false
    end
  end
end
