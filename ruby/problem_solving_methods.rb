# Release 0: Implement a Simple Search
def search_array(arr, srch_array)
  indx = 0 
  while indx < arr.length
    if arr[indx] == srch_array
      puts "the index of #{srch_array} is #{indx}."
      break
    end
    indx += 1 
  end
end
arr_test = [42, 89, 23, 5]
search_array(arr_test, 23)


