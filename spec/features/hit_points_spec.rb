feature "hit_points" do
  scenario "can view players HP" do
    visit '/'
    fill_in :player_1_name, with: "Asad"
    fill_in :player_2_name, with: "Chris"
    click_button "Submit"
    expect(page).to have_content "Chris: 60HP"
  end
end
