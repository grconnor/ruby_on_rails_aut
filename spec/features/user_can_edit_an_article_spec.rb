feature 'visitor can edit articles' do
  let(:test_article) { FactoryBot.create(:article, title: 'The worst title possible', content: 'But what is inside is what counts') }
  before do
    visit article_path(test_article)
    click_on 'Edit Article'
    fill_in 'Title', with: 'We are getting there'
    click_on 'Update Article'
  end

  describe 'visitor can edit an article' do
    it 'displays a successfull message' do
      expect(page).to have_content 'The article was successfully updated'
    end

    it 'displays the updated article' do
      expect(page).to have_content 'We are getting there'
    end
  end
end
