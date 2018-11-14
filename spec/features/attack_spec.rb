feature "Attacks" do
  scenario "Player 1 attacks and gets confirmation" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Asad attacked Chris!"
  end
end
