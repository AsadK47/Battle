feature "switch turns" do
  context "seeing the current turn" do
    scenario "at the start" do
      sign_in_and_play
      expect(page).to have_content "Asad's turn"
    end

    scenario "after player_1 attacks" do
      sign_in_and_play
      click_button "Attack"
      expect(page).not_to have_content "Asad's turn"
      expect(page).to have_content "Chris's turn"
    end
  end
end
