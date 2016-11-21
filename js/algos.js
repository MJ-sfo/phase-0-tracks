// Release 0: Find the Longest Phrase
// build function that takes array as parameter
// find length of array
// build vars for length of each item and the index in array
// check the array isn't empty
// if only one element, work is done
// build loop - cycles number of items minus one
// each loop - compare next item for length.  if longer than record, record index
// after loop, return result of longest item
// driver code, that tests several arrays

function longest_word(array_list) {
  console.log("the array contains: " + array_list);
  console.log("this array contains "  + array_list.length + " items.");
  var thing = array_list[0];
  var item_length = array_list[0].length;
  console.log("the first item " + thing + " is " + item_length + " characters long." )
  
    if (array_list.length > 1) {
      for (i = 1; i < array_list.length; i++) {
        if (item_length < array_list[i].length ) {
          item_length = array_list[i].length;
          thing = array_list[i];
        }; // end if if - only does if new item is longer
      };  // end of for loop - compare item by item
    };          // end of if condition - no comparison if array has less than two items

  console.log("the longest item " + thing + " is " + item_length + " characters long." )
}   // end of functio

var test_array1 = [ "Sammie", "life", "Davids home" ];
var test_array2 = ["me", "he", "Jack Robertson", "I"];
var test_array3 = ["Four score and seven years ago..."]
longest_word(test_array1);
console.log("---------");
longest_word(test_array2);
console.log("---------");
longest_word(test_array3);
console.log("---------");