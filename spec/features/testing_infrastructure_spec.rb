feature "Tests infrastructure" do
  scenario "Tests if the infrastructure works" do
    visit '/'
    expect(page).to have_content("Testing infrastructure!")
  end
end
