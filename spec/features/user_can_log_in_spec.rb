feature 'User can log in' do
  let(:user) {create(:user) }
  context 'successfully' do
    before do
      visit root_path
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      clicl_on "Log in"
    end

    it 'is expected to show a log in message' do
      expect(page).to have_content 'Write Article'
    end
  end
end
