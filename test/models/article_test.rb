require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "should not save article without title" do
    article = Article.new(:body => "some fake body here!!!")
    assert_not article.save, "Saved article without title"
  end
  test "should not save article without body" do
    article = Article.new(:title => "fake title")
    assert_not article.save, "Saved article without body"
  end
  test "save when both title and body are provided" do
    article = Article.new(:title => "fake title", :body => "some fake body here!!!", :status => "private")
    assert article.save, "Saved article without title and body"
  end
  test "destroy when id is provided" do
    article = Article.new(:title => "fake title", :body => "some fake body here!!!")
    assert article.destroy, "Failed to delete article"
  end

end
