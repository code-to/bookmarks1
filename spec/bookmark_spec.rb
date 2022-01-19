require 'bookmarks'

describe Bookmark do
  describe '.all_bookmarks' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

      bookmarks = Bookmark.all_bookmarks
      # visit('/bookmarks')
      expect(bookmarks).to include("http://www.google.com")
    end
  end
end
