require './lib/bookmark'

describe ".all" do
  it "Shows all the bookmarks" do
    conn = PG.connect(dbname: 'bookmark_manager_test')

    #This adds the test data
    conn.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
    conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
    conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")

    expect(Bookmark.all).to include("http://www.google.com")
    expect(Bookmark.all).to include("http://www.makersacademy.com")
    expect(Bookmark.all).to include ("http://www.destroyallsoftware.com")
  end
end
