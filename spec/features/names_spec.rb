feature "names" do
  scenario "Player 1 and 2 can enter names" do
    visit '/'
    fill_in :player_1_name, with: "Asad"
    fill_in :player_2_name, with: "Chris"
    click_button "Submit"
    expect(page).to have_content "Asad vs Chris"
  end
end
