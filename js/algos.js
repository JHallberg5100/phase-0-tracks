//This is the program to process an array of strings and return the longest one.
//It will be a single function, that will just have a loop and an if statement.

//Funtion - take array, return strings
function String_sizer(input_array){
  var longest_string = "";
  var highest_length = 0;

  //To begin, take the array and cycle through it.  0 until array length minus 1.
  for (i = 0 ; i < input_array.length; i ++){
    //Take length of each string in array.  Assing a current greatest variable and start at 0.  If greater then that variable, output word is word
    //and the current greatest number is reset.
    var test_length = input_array[i].length;
    if (test_length > highest_length){
      longest_string = input_array[i];
      highest_length = test_length;
    }
    else if (test_length == highest_length){
      console.log("As two strings are the same size, this is not accurate");
    }
    else {
      console.log("Found a loser!");
    }
  }//Leave and print string after loop.
    console.log(longest_string);
}

var array_chaff = ["Meow", "Electric", "swizzle", "Hey for realzies", "WORD"];

String_sizer(array_chaff);


// This is the loop that will check two hashtable objects and return true if they have equivilent data.
//We will go about doing that for the two keys by having a two loop function.  First loop will go through the keys of the first input hash.
// The second will then loop through the second hashs keys, and compares each to the first.  So each key will go through and be checked against the entire second hash at any time.
// Then, if any keys are equivilent, an if statement will check to see if the data is equivilent.  If it is, auto return true and break program.
//if not, keep going, and if all are dissimilar, return false.

//Function:  Input:Two hash objects,  Output:true or false.

function Hash_compare(object1,object2){
  var key1 = '';
  var key2 = '';
  var output = false
  //First loop.  We will go through one full hash, by using a for loop.
  for (var i in object1){
    //Save key in variable, loop through keys of second hash
    for (var i2 in object2){
      //compare key to key.  If true, check both datas against eachother.  if that is true, return true.  If false, do nothing.
      if (i == i2){
        if(object1[i] == object2[i2]){
          output = true;
        }
      }
    }
  }
  return output;
}


var test_array1 = {
  "name" : "Sam",
  "purple": "yes",
}
var test_array2 = {
  "name" : "Huntle",
  "it": "vari",
}
var test_array3 = {
  "funk" : "get down",
  "purple": "yes",
}

var tester1 = Hash_compare(test_array1, test_array2);
var tester2 = Hash_compare(test_array1, test_array3);
console.log(tester1);
console.log(tester2);
// This is the loop that will generate nonesense arrays of nonsense words.  Each word will be of a random 2-10 letter length, and will be made of
// cobbled together 2 letter syllables.  These will be put in an array of length determined by input_array
// add function to allow me to generate random ints
function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}
// Function Input: integer  Output:Array of words integer length

function Nonsense_generator(input){
  //initialize variables for syllables, and the output
  var counter = input;
  var output_string = "";
  var output_array = [];
  var rand_num = 0
  var non_syl = ["as","ef","br","wd","po","rf",'ae','xi',"eu",'qu','er','ve','gr','aw','pe','as','xe','ol','ch','ui'];
  for (counter; counter != 0 ; counter--){
    //To begin, take the input and initilize it as i.  Run until i == 0
    var rando = getRandomInt(1,5);
    for (rando; rando != 0; rando--){
      rand_num = getRandomInt(0,19);
      output_string = output_string + non_syl[rand_num];

    }
    output_array.push(output_string);
    output_string = ""
  }
  console.log(output_array);
  return output_array;
}
//To begin, take the input and initilize it as i.  Run until i == 0
var biggun = Nonsense_generator(4);
Nonsense_generator(32);
String_sizer(biggun);
//loop 1-5 times, each time adding randomly selected nonsense syllable and adding it to output string

//Return output string
