require 'rails_helper'

describe 'Welcome Page' do
  describe 'As a visitor' do
    context 'When I visit the / page' do
      before(:each) do
        visit root_path
      end
    
      it 'has a button to generate a random excuse' do
        expect(page).to have_link "Give me a random excuse!"
      end

      context 'When I click on the give me a random excuse button' do
        it 'I see an excuse and a button to get another' do
          click_link "Give me a random excuse!"

          expect(page).to have_link "I need another excuse"
        end
      end

      it 'has a drop down menu to get an excuse by topic' do
        expect(page).to have_button "Find my excuse"
        expect(page).to have_select 'excuse_topic', options: ["Family", "Office", "Children", "College", "Party", "Funny", "Unbelievable", "Developers", "Gaming"]
      end

      context 'When I choose an option from the dropdown and click Find my excuse' do
        it 'I see an excuse and a button to get a random one' do
          select 'Children', from: 'excuse_topic'
          click_button 'Find my excuse'

          expect(page).to have_link "Give me a random excuse!"
          expect(page).to have_button "Find my excuse"
          expect(page).to have_select 'excuse_topic', options: ["Family", "Office", "Children", "College", "Party", "Funny", "Unbelievable", "Developers", "Gaming"]
        end
      end
    end
  end
end