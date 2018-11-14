feature "hit_points" do
  scenario "can view players HP" do
    sign_in_and_play
    expect(page).to have_content "Chris: 60HP"
  end
end
