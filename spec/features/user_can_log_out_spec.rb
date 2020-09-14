feature 'User can log in' do
  let(:user) {create(:user) }
  context 'successfully' do
    before do
      visit root_path
      click_on 'Log out'
    end

    it 'is expected to show a log out message' do
      expect(page).to have_content ' '
    end
  end
end
