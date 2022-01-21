describe 'add new bookmarks', type: :feature do
  it 'allows user to add a new bookmark' do
    visit ('/bookmarks/new')
    fill_in :url, with: 'http://www.example.org'
    fill_in :title, with: 'Test Bookmark'
    click_button 'ADD!'
    expect(page).to have_link('Test Bookmark', href: 'http://www.example.org')
  end 
end