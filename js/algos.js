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
  console.log("this array contains "  + array_list.length + " letters.");
  // var item = array_list[0];
  // var item_length = array_list[0].item_length;
  console.log("the item " + array_list[0] + " is " + array_list[0].length + " characters long." )
}

var test_array = [ "help", "life", "Davids home" ];
longest_word(test_array);