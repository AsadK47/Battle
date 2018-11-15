feature "hit_points" do

  scenario "Can view player_1 HP" do
    sign_in_and_play
    expect(page).to have_content "Asad: 60HP"
  end

  scenario "can view player_2 HP" do
    sign_in_and_play
    expect(page).to have_content "Chris: 60HP"
  end
  
end
