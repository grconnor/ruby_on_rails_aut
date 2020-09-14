feature 'User can create articles' do
  before do
    visit root_path
    click_on 'New Article'
    fill_in 'Title', with:  'Enjoy your birthday!'
    fill_in 'Content', with:  'Congratz'
    click_on 'Create Article'
  end

  describe 'User can successfully create an article' do
    it 'User should see success message' do
      expect(page).to have_content 'your article was successfully created'
    end

    it 'User should be on article show page' do
      article = Article.find_by(title:  'Enjoy your birthday!')
      expect(current_path).to eq article_path(article)
    end

    it 'User should see article title' do
      expect(page).to have_content 'Enjoy your birthday!'
    end

    it 'User should see article content' do
      expect(page).to have_content 'Congratz'
    end
  end

  context "User doesn't enter a title for the article" do
    before do
      fill_in 'Content', with:  'Congratz'
      click_on 'Create Article'
    end

    it 'User should see error message' do
      expect(page).to have_content "Title can't be blank"
    end
  end
end