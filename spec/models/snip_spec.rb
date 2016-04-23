require 'rails_helper'

RSpec.describe Snip, type: :model do
  describe "validations" do
      it "requires a title" do
        c = Snip.new(title: nil)
        expect(c).to be_invalid
      end
      it "requires code snippets" do
        c = Snip.new(title: "nil")
        expect(c).to be_valid
      end
    end
end
