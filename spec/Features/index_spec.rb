describe "looks at the index.erb and view the content", type: :feature do 
  it 'allow the user to go on the index page' do 
    visit('/')
    expect(page).to have_content "Here are your bookmarks" 
  end 
end

describe "viewing bookmarks", type: :feature do
  it 'allows the user to see their bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec ("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

    visit('/bookmarks')
    # bookmarks = Bookmark.all_bookmarks
    expect(page).to have_content 'http://www.google.com'
  end
end