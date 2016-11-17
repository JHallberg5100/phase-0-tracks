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
  var output_string;
  var output_array = [];
  var rand_num = 0
  var non_syl = ["as","ef","br","wd","po","rf",'ae','xi',"eu",'qu','er','ve','gr','aw','pe','as','xe','ol','ch','ui'];
  for (counter; counter != 0 ; counter--){
    //To begin, take the input and initilize it as i.  Run until i == 0
    var rando = getRandomInt(1,5);
    for (rando; rando != 0; rando--){
      rand_num = getRandomInt(0,20);
      output_string = output_string + non_syl[rand_num];

    }
    output_array.push(output_string);

  }
  console.log(output_array);
}
//To begin, take the input and initilize it as i.  Run until i == 0
Nonsense_generator(5);
Nonsense_generator(32);
//loop 1-5 times, each time adding randomly selected nonsense syllable and adding it to output string

//Return output string
