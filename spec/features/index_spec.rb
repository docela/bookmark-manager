feature "Bookmark Manager" do
    scenario "checks index" do
        visit("/")
        expect(page).to have_content "This is the Bookmark Manager"
    end
end