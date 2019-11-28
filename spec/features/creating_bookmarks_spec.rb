feature "Adding a bookmark" do
  scenario "A user can add a bookmark entry to the Bookmark Manager" do
    visit("/bookmarks/new")
    fill_in('url', with: "https://www.tesco.com")
    click_button("Add")
    expect(page).to have_content("https://www.tesco.com")
  end
end
