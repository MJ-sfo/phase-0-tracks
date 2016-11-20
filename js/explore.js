// Release 4: Write a JavaScript Program
// pseudocode a function .reverse

// create method that accepts a text
// set counting variable equal to half length of text -minus one if length is odd number
// create a loop - half length of text 
// take first character, put into holding-variable, put last character in first place
// put first character in last place

function reverse(nonReverse) {
  // math.floor rounds DOWN to closest integer
  var num_characters = Math.floor(nonReverse.length / 2);
  var length_word = nonReverse.length
  var newWord = nonReverse
  console.log("length of word is " + length_word + " and half is: " + num_characters); 
  
  for (i = 0; i < num_characters; i++) {
    var first_letter = nonReverse[i];
    var last_letter = nonReverse[length_word-i-1];
    console.log("the letter " + i + " to be moved forward is: " + first_letter);
    console.log("the letter to be moved back is: " + last_letter);
    // i have to create a function, that changes a string by index
    String.prototype.replaceAt=function(index, character) {
      return this.substr(0, index) + character + this.substr(index+character.length);
      } ;   
    nonReverse = nonReverse.replaceAt(i, last_letter);
    nonReverse = nonReverse.replaceAt((length_word-i-1), first_letter);
  };  // for loop - only runs iftext has more than one letter
  
  // only prints if input is longer than one letter
  if (nonReverse.length > 1) {
    console.log("the reorginized word is: " + nonReverse);  
  };
}
reverse("Susan");  