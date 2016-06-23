console.log("practice");

// Write a function called 'average' that accepts a list of
// numbers and returns the average. The average
// of an empty list should be considered zero.
function average(arr) {
	var sum = 0;
    var avg = 0;
if(arr.length === 0) {
  return avg;
}else {
  for (var i=0; i < arr.length; i++) {
		sum = sum + arr[i];
        avg = sum/(arr.length);
}return avg;
}
}
console.log(average([1, 2, 3]));
console.log(average([]));

// Write a function called `biggest` that returns the
// biggest number in an array. If there is no biggest
// number the function should return undefined.
function biggest(arr) {
 var big;
if(arr.length === 0) {
  return big;
}else {
  big = arr[0];
  for (var i=1; i < arr.length; i++) {
		if(arr[i]>big) {
          big=arr[i];
        }
}return big;
}
}

console.log(biggest([12,3,4,567,8]));
console.log(biggest([]));

// Write a function called `urlParams` that accepts a
// string representing a URL and returns an object with
// key, value pairs for each parameter in the url string.
// If there are no URL parameters your function should
// return an empty object.
//
// Use the string methods split() to target parts of the
// string to turn into an array
// 
// URLs are strings like this:
//
// http://google.com/
// {}
// http://google.com/?q=cats
// {q: 'cats'}
// http://google.com/?q=cats&type=images
// {q: 'cats', type: 'images'}
// http://google.com/?q=cats&type=images&format=gif
// {q: 'cats', type: 'images', format: 'gif'}

function urlParams(query) {
  var obj = {};
  var params = query.split("?")[1];

  if(!params) {
  	return {};
  } else {
  	var paramsList = params.split("&");
  	for (var i=0; i<paramsList.length; i++) {
  	var key = params.split("=")[0];
  	var value = params.split("=")[1];
  	obj[key] = value;
  }
  return obj;
}
console.log(urlParams("http://google.com/"))
console.log(urlParams("http://google.com/?q=cats"))
console.log(urlParams("http://google.com/?q=cats&type=images"))
console.log(urlParams("http://google.com/?q=cats&type=images&format=gif"))

votes = ["lunch", "lunch", "problem", "youtube"];
returns "lunch"
votes = ["sleep", "eat", "sleep", "homework"];

function election(votes) {
  var popular;
  var repeat = 0;
  for(var i=0; i<votes.length; i++) {
    for (var k=0; i<votes.length; i++) {
      if(var[i] == var[k]) {
        repeat = repeat +1;
      } return repeat;
    }
  }
}



//1. Write a function called isPalindrome that accepts a string and returns true
  // if the string is a palindrome. A palindrome is a string that is spelled the 
  // same way backwards and forwards.

 function isPalindrome(word) {
    var arr = word.split("");
    arr.reverse();
    var rep = arr.toString();
    if(word == rep) {
      console.log(true);
    } else {
      console.log("false");
    } console.log(word, rep);
  }
  isPalindrome(""); // returns true;
  isPalindrome("a"); // returns true;
  isPalindrome("ada"); // returns true;
  isPalindrome("taco"); // returns true;
  isPalindrome("racecar"); // returns true;
  isPalindrome("lions oil"); // returns true;
  isPalindrome("not the same backwards and forwards"); // returns false;

// // 2. Write a method called removeLetter that accepts a string, and a string representing
//    a character to be removed from the string. The function should return a new string
//    with all the occurences of the ltter removed from the original string.
//    removeLetter("tomorrow", "o") // returns "tmrrw"

function removeLetter(word, letter) {
  var result = "";
  for(var i=0; i<word.length; i++) {
    if(word[i] !== letter) {
      result += word[i];
    }
  } return result;
}
removeLetter("tomorrow", "o");


// Write a function called reverse() that accepts a list and 
//    returns a new list with reversed contents. Do not use the 
//    built in reverse function!
function reverse(array) {
  var revList = [];
  for (var i = array.length-1 ; i>=0; i--) {
    revList.push(array[i]);
} return revList;
}
  console.log(reverse([])); // returns []
  console.log(reverse([1,2])); // returns [2,1]
  console.log(reverse([1,2,3,4,5])); // returns [5,4,3,2,1]


// / 2. Write a function merge() that accepts two sorted lists
// //    and merges them together into a new sorted list.
function merge(a, b) {
  var ab = a.concat(b).sort(function(y, z){
    return y-z;
  });
  return ab;
}

   console.log(merge([], [])); // returns []
   console.log(merge([], [2])); // returns [2] 
   console.log(merge([3], [])); // returns [3] 
   console.log(merge([1, 7], [5])); // returns [1, 5, 7]
   console.log(merge([1,3,5], [2,4,6,8,10])); // returns [1,2,3,4,5,8,10]


//write a function called daysInMonth() that accepts an integer between 1 and 12 representing the month and 
//returns the number of days in that month.

//write a function called daysToBirthday that accepts two integers representing someone's birthday
//and returns the total number of days until their next birthday

   var cal = [
     31,
     28,
     31,
     30,
     31,
     30,
     31,
     31,
     30,
     31,
     30,
     31
];

function daysInMonth(num) {
  return cal[num-1];
}

// console.log(daysInMonth(12));

function daynumber(a, b) {
  var dayn = b;
  for(var i = 0; i<a-1; i++) {
    dayn = dayn + cal[i];
  }return dayn;
}

// console.log(daynumber(4, 22));

var today = 112;

function daysToBirthday(c, d) {
  var diff = daynumber(c, d) - today;
  if(diff<0) {
    diff = 365 + diff;
  }return diff;
}

console.log(daysToBirthday(4, 22));
console.log(daysToBirthday(4, 28));
console.log(daysToBirthday(4, 21));


//Create a function that, given a DOM element on the page, will visit the element itself and all 
//of its descendents (not just its immediate children). For each element visisted, the function
//should pass that elemtn to a provided callback function.

//The arguments to the function should be:

//a DOM element 
//a callback function (that takes a DOM element as its argument)

// function childelements () {
//   var e = document.body.children;
//   var c = [];
//   for (var i=0; i<e.length; i++) {
//     c.push(e[i]);
//   } console.log(c);
// }

// childelements();

// //Write a "mul" function which will produce the following output
// // - console.log(mul(2)(3)(4)); => 24
// function mul(x){
//   return function(y) {
//   return function(z){
//   }
//   return x*y*z;
//   };
// }

// console.log(mul(2)(3)(4));



//Flatten an array


var flatten = function(arr){
    //flatten the array here
    for(i=0; i<arr.length; i++) {
      if(Array.isArray(arr[i])) {
       arr.splice(i, 1, arr[i][0], arr[i][1]);
      }
    }

    return arr;
};

var myArr = [1, 2, [3, 4], [5, 6], 7];

console.log(flatten(myArr));
//output: [1, 2, 3, 4, 5, 6, 7]


// search for the index n inside of list
// return the index of n
// return -1 if it doesn't exist

//start a for loop from the end of the array

// set up variables min, max and guess to keep track of the range of indexes you're currently searching through.
// set guess equal to (min + max / 2) and round it
// read the value of the array at the index of guess
// if the value read is higher than n then adjust max = guess - 1
// if the value read is lower than n then adjust min = guess + 1
// repeat steps 2 through 5 until n is found.
// return guess as the index of n
// return -1 if min, max, and guess converge on an index and n is not in the list.
var list = [7, 10, 20, 30, 40, 50, 60]
binarySearch(list, 15); // returns -1

function binarySearch(arr, search) {
  var min = 0;
  var max = arr.length - 1;
  var index;
  var elem;

  while (min <= max) {
    index = Math.floor((min + max) / 2);
    elem = arr[index];

    if (elem < search) {
      min = index + 1;
    }
    else if (elem > search) {
      max = index - 1;
    }
    else {
      return index;
    }
  }

  return -1;
}

//find the largest palindrome that is a product of two 3-digit numbers
function reversed(s){
    var b = s.toString().split("").reverse().join("");
  if(b == s) {
    return true;
  }else {
    return false;
  }
}
function product() {
  var pal = 0;
  var d = 0;
  var e = 0;
  for (var i= 999; i>99; i--) {
    for(var j=999; j>99; j--) {
      var c = i*j;
      if(reversed(c) === true && c>pal) {
        console.log(c);
        pal = c;
        d = i;
        e=j;
      }
    }
  } console.log(pal + " product of " + d + " and " + e);
}

product();




// We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is also prime.

// What is the largest n-digit pandigital prime that exists?



//move all zeroes to end of the array
var nums = [0, 1, 0, 2, 0];
function zeroa(arr) {
  for(var i=arr.length-1; i>-1; i--) {
    if(arr[i]===0) {
      arr.splice(i, 1);
      arr.push(0);
    }
  }return arr;
}

console.log(zeroa(nums));


//pascal's triangle
function numRows (n) {
  var arr = [];
  
  for (var i = 0; i < n; i++) { 
    arr[i] = new Array(i);
    
    for (var j = 0; j < i+1; j++) {            
      if (j === 0 || j === i) {
        arr[i][j] = 1;
      } else if (j < i) {
        arr[i][j] = arr[i-1][j-1] + arr[i-1][j];
      } 
    }
  }
  
  return arr;
}

console.log(numRows(6));


//applications, networking, phone screens, in-person interviews, and link to job tracker



//Given an array of integers, every element appears twice except for one. Find that single one.

function mergeSort (arr) {    
    if (arr.length < 2) return arr;
    
    var mid = Math.floor(arr.length /2);
    var subLeft = mergeSort(arr.slice(0,mid));
    var subRight = mergeSort(arr.slice(mid));
    
    return merge(subLeft, subRight);
}

function merge (a,b) {
    var result = [];
    while (a.length >0 && b.length >0)
        result.push(a[0] < b[0]? a.shift() : b.shift());
    return result.concat(a.length? a : b);
}


//Fallout Hacking
function compare(w1, w2) {
  var sum = 0;
  for (var i=0; i<w1.length; i++) {
    if(w1[i] === w2[i]) {
      sum = 1+sum;
    }
  } return sum;
}

function nextGuess(numCorrect, guess, allWords) {
  for (var i=0; i<allWords.length; i++) {
    if(compare(guess, allWords[i]) === numCorrect) {
      return allWords[i];
    }
  }
}

allWords = ['WASTING', 'WANTING', 'WARNING', 'SOLDIER', 'BICYCLE'];

//write a function to tell if two words are one letter or replacement away from each other

function oneAway(a, b) {
  var check = 0;
  w1 = a.split('');
  w2= b.split('');
  if(w1.length === w2.length) {
    for(var i=0; i<w1.length; i++) {
      if(w1[i] != w2[i]) {
        w1[i] = w2[i];
        check = check + 1;
      }
    } if(check > 1) {
      return false;
    } else {
      return true;
    }
  } else if (w1.length > w2.length) {
    for(var j=0; j<w1.length; j++) {
      if(w1[j] != w2[j]) {
        w2.splice(j, 0, w1[j]);
        check = check + 1;
      }
    } if(check > 1) {
      return false;
    } else {
      return true;
    }
  } else if(w2.length > w1.length) {
    for (var k=0; k<w2.length; k++) {
      if(w1[k] != w2[k]) {
        w1.splice(k, 0, w2[k]);
        check = check + 1;
      }
    } if(check > 1) {
      return false;
    } else {
      return true;
    }
  }
}

console.log(oneAway('pale', 'pal'));

//compress string function
function compress(str) {
  var com = '';
  var count = 1;
  com = com + str[0];
  for(var i=1; i<str.length; i++) {
    if(i === str.length-1) {
      if(str[i] === str[i-1]) {
        count++;
        com = com + count;
      }else if(str[i] != str[i-1]) {
        com = com+count;
        com = com + str[i] + 1;
      }
    } else if(str[i] === str[i-1]) {
      count++;
    } else if (str[i] != str[i-1]) {
      com = com + count;
      com = com + str[i];
      count = 1;
    }
  } return com;
}

function compressString(word) {
  var c = compress(word);
  if(c.length >= word.length) {
    return word;
  } else {
    return c;
  }
}

console.log(compressString('aabbbaaaabbbbcccccc'));