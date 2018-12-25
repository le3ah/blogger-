require 'rails_helper'

describe 'user edits article' do
  describe  'they link from a show to an edit' do
    describe  'they fill in a form' do
      it "should display the change to this article" do
        article = Article.create(title: "Title 1", body: "Body 1")

        visit article_path(article)

        click_link "Edit"
        expect(current_path).to eq(edit_article_path(article))

        fill_in "article[title]", with: "Updated Title!"
        fill_in "article[body]", with: "Updated Body!"

        click_on "Update Article"
        expect(current_path).to eq(article_path(article))
        expect(page).to have_content("Updated Title!")
        expect(page).to have_content("Updated Body!")
        expect(page).to have_content("was Updated!")
      end
    end
  end
end
