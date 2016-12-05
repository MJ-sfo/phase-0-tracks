 require_relative 'game_Mike'     #  video is wrong, refers to FILE to look at, not class


 
 describe Mike_game do
  let(:mike_test) { Mike_game.new }


    it "removes non-letters" do
    # mike_test = Mike_game.new
    expect(mike_test.clean_text("  i lov(e   a 45 CAM. ")).to eq "iloveacam"
  end

    it "finds first letter" do
    # mike_test = Mike_game.new
    expect(mike_test.receive_guess("  i lov(e   a 45 CAM. ")).to eq "i"
  end
end