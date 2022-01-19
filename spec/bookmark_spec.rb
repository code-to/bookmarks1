require 'bookmarks'

describe Bookmark do
  describe '.all_bookmarks' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all_bookmarks
      expect(bookmarks).to include("http://www.google.com")
    end
  end
end
