// Release 4: Write a JavaScript Program
// pseudocode a function .reverse

// create method that accepts a text
// set counting variable equal to half length of text -minus one if length is odd number
// create a loop - half length of text 
// take first character, put into holding-variable, put last character in first place
// put first character in last place
var nonReverse = "";
function reverse(nonReverse) {
  / math.floor rounds DOWN to closest integer
  var characters = Math.floor(nonReverse.length / 2);
  console.log("length of word is " + nonReverse.length + " and half is: " + characters); 
}
reverse("y");