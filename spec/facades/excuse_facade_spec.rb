require 'rails_helper'

describe ExcuseFacade do
  let(:facade) { ExcuseFacade.new({excuse: "true", excuse_topic: "funny"}) }

  describe '#initialize' do
    it 'exists' do
      expect(facade).to be_an ExcuseFacade
      expect(facade.excuse).to eq("true")
      expect(facade.topic).to eq("funny")
    end
  end

  describe '#fetch_random_excuse' do
    it 'creates an Excuse object' do
      expect(facade.fetch_random_excuse).to be_an Excuse
      expect(facade.fetch_random_excuse.excuse).to be_a String
    end
  end

  describe '#fetch_excuse_by_topic' do
    it 'creates and Excuse object' do
      expect(facade.fetch_excuse_by_topic).to be_an Excuse
      expect(facade.fetch_random_excuse.excuse).to be_a String
    end
  end
  
end