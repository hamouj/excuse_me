require 'rails_helper'

describe Excuse do
  let(:excuse) { Excuse.new({
    id: 824, 
    excuse: "My dog just threw up in my lap", 
    category: "gaming"
  }) }

  describe '#intialize' do
    it 'exists and has attributes' do
      expect(excuse).to be_an Excuse
      expect(excuse.excuse).to eq("My dog just threw up in my lap")
    end
  end
end