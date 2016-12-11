// Release 0: Find the Longest Phrase
// pseudocode:
// write a function
// create length-array - carry text, value of length
// iterate through array - if length of text longer than previous, save in length-array
// print answer
// close function
// driver - var several test-array's
// call function with test-array's

function longest_phrase(all_texts) {
  var record = ["", 0];
  for (i=0; i<all_texts.length; i +=1) {
    if (all_texts[i].length > record[1]) {
      record[0] = all_texts[i];
    }
  }
  return record[0];
}

var test_array = ["miss", "Happy Days", "simmon", "This is the day the Lord has made"];
console.log(longest_phrase(test_array));