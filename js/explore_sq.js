var str = "Loop over me!";
var rev_string = "";

function reverse() {
  
  for (var i = str.length - 1; i > -1; i += -1) {   
    console.log(str[i]);  
    rev_string = rev_string + str[i];
  }
  console.log(rev_string);
}

 reverse() 