require 'rails_helper'

describe ExcuserService do
  context 'class methods' do
    describe '#get_random_excuse' do
      it 'returns a random excuse' do
        random_excuse = ExcuserService.get_random_excuse

        expect(random_excuse[0]).to have_key :excuse
      end
    end
  end
end