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
    if (all_texts[i].length >= record[1]) {
      record[0] = all_texts[i];
      record[1] = all_texts[i].length;
    }
  }
  return record[0];
}

var test_array = ["miss", "Happy Days", "simmon", "This is the day the Lord has made"];
var test2 = ["Mom", 'Dad'];
var test3 = [""];
var text4 = ['nobody here but us chickens',' yes', 'today'];
console.log("The longest text is: " + longest_phrase(test_array));
console.log("The longest text is: " + longest_phrase(test2));
console.log("The longest text is: " + longest_phrase(test3));
console.log("The longest text is: " + longest_phrase(text4));


// Release 1: Find a Key-Value Match
// pseudocode:
// write function that takes two objects 
// iterate through first object - in each cycle, iterate through second object,
// see if share at least one key-value pair - if so return true
// else, return false

function key_value(object1, object2) {
  var match = false;
  var alertText = "";
  for (i1=0; i1<object1.length; i1 +=1) {
    for (i2 =0; i2<object2.length; i2 +=1) {

      console.log("object1[i1] " + i1 + " is: " + object1[i1]  );
      console.log("object2[i2] " + i2 + " is:" + object2[i2] );
      if (object1[i1] == object2[i2]) {
        match = true;
      }  // if equal
    }  // loop for i2
  }  // loop for i1
  return match;
} // function key_value
