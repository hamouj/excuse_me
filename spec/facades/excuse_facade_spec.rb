require 'rails_helper'

describe ExcuseFacade do
  let(:facade) { ExcuseFacade.new }

  describe '#initialize' do
    it 'exists' do
      expect(facade).to be_an ExcuseFacade
    end
  end

  describe '#fetch_random_excuse' do
    it 'creates an Excuse object' do
      expect(facade.fetch_random_excuse).to be_an Excuse
      expect(facade.fetch_random_excuse.excuse).to be_a String
    end
  end
end