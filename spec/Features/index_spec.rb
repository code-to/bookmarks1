describe "looks at the index.erb and view the content", type: :feature do 
  it 'allow the user to go on the index page' do 
    visit('/')
    expect(page).to have_content "Here are your bookmarks" 
  end 
end

describe "viewing bookmarks", type: :feature do
  it 'allows the user to see their bookmarks' do
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    Bookmark.create(url: 'http://www.twitter.com', title: 'Twitter')
    Bookmark.create(url: 'http://www.example.org', title: 'Test Bookmark')
    
    visit('/bookmarks')
    # bookmarks = Bookmark.all_bookmarks
    expect(page).to have_link('Test Bookmark', href: 'http://www.example.org')
    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
  end
end