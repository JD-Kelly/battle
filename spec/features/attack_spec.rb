feature 'Attacking' do 
  scenario 'attack player 2' do 
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "James attacked Kim"
  end

  scenario "player 2's HP reduces by 10" do
    sign_in_and_play
    click_link "Attack"
    click_link "Keep Playing"
    expect(page).to have_content "Kim: 50HP"
  end
end