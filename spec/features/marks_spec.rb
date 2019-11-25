feature "Viewing bookmarks at bookmarks route" do
  scenario "See a list of bookmarks" do
    visit("/bookmarks")
    expect(page).to have_content "https://www.google.co.uk"
    expect(page).to have_content "https://www.superdrug.com/"
  end
end
