feature "names" do
  scenario "Player 1 and 2 can enter names" do
    sign_in_and_play
    expect(page).to have_content "Asad vs Chris"
  end
end
