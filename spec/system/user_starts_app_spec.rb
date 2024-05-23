require 'rails_helper'

describe 'User starts app' do
  context "and goes to root path" do
    it 'and view start up page' do
      visit root_path
      expect(current_path).to eq root_path
      expect(page).to have_content 'Cadê Buffet?'
    end
  end
end
