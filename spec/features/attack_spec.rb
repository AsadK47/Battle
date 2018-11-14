feature "Attacks" do
  scenario "Player 1 attacks and gets confirmation" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Asad attacked Chris!"
  end

  scenario "Player 2 loses 10HP" do
    sign_in_and_play
    click_button "Attack"
    expect(page).not_to have_content "Chris: 60HP"
    expect(page).to have_content "Chris: 50HP"
  end
end
