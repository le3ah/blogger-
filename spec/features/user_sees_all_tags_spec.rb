require 'rails_helper'

describe  'user sees all tags' do
  describe 'they visit /tags' do
    it "displays all tags" do
      article = Article.create(title: "Title!", body: "Body!")
      article_2 = Article.create(title: "Title 2!", body: "Body 2!")
      tag_1 = article.tags.create(name: "Tag 1")
      tag_2 = article.tags.create(name: "Tag 2")
      tag_3 = article.tags.create(name: "Tag 3")
      tag_4 = article_2.tags.create(name: "Tag 3")

      visit tags_path

      expect(page).to have_content(tag_1.name)
      expect(page).to have_content(tag_2.name)
      expect(page).to have_content(tag_3.name)
      expect(page).to have_content(tag_4.name)
    end
  end
end
