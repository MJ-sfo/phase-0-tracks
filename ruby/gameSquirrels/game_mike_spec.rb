 require_relative 'game_Mike'     #  video is wrong, refers to FILE to look at, not class


 
 # describe Mike_game do
 #  let(:calculator) { Mike_game.new }
 describe Mike_game do
    it "removes non-letters" do
    mike_test = Mike_game.new
    expect(mike_test.clean_text("  i lov(e   a 45 CAM. ")).to eq "iloveacam"
  end

end