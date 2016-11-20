// Release 4: Write a JavaScript Program
// pseudocode a function .reverse

// create method that accepts a text
// set counting variable equal to half length of text -minus one if length is odd number
// create a loop - half length of text 
// take first character, put into holding-variable, put last character in first place
// put first character in last place

// var nonReverse = "";
function reverse(nonReverse) {
  // math.floor rounds DOWN to closest integer
  var num_characters = Math.floor(nonReverse.length / 2);
  var hold_letter = ""
  console.log("length of word is " + nonReverse.length + " and half is: " + num_characters); 
  for (i = 0; i < num_characters; i++) {
    hold_letter = nonReverse[i];
    console.log("the letter " + i + " is: " + hold_letter);
    console.log("the letter to be moved forard is: " + nonReverse[nonReverse.length-i-1])
    // nonReverse[i] = nonReverse[nonReverse.length-i-1];
    // nonReverse[nonReverse.length-i] = hold_letter;
  };  // for loop - only runs iftext has more than one letter
  console.log("the reorginized word is: " + nonReverse);
}
reverse("Mike");  // any loop must make sure that length is greater than one