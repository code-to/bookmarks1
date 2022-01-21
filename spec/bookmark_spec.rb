require 'bookmarks'
require 'database_helpers'

describe Bookmark do
  describe '.all_bookmarks' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      bookmark= Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
      Bookmark.create(url:"http://www.twitter.com", title: "Twitter")

      bookmarks = Bookmark.all_bookmarks
     
      expect(bookmarks.length).to eq 2
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'

    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.example.org', title: 'Test Bookmark')
       persisted_data = persisted_data(id: bookmark.id)
     
    
      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.title).to eq 'Test Bookmark'
      expect(bookmark.url).to eq 'http://www.example.org'
    end
  end

end
