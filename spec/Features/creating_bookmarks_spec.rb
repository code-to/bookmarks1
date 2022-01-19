describe 'add new bookmarks', type: :feature do
  it 'allows user to add a new bookmark' do
    visit ('/bookmarks/new')
    fill_in :url, with: 'http://amazon.com'
    click_button 'ADD!'
    expect(page).to have_content 'http://amazon.com'
  end 
end