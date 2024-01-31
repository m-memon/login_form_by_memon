bool smallAlphabetsDetectFunction(String detect) {
  bool detector = false;
  List<String> smallAlphabets = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z"
  ]; // smallAlphabets
  for (int i = 0; i < smallAlphabets.length; i = i + 1) {
    for (int a = 0; a < detect.length; a = a + 1) {
      if (detect[a] == smallAlphabets[i]) {
        detector = true;
      } // if
      if (detector == true) {
        break;
      } // if
    } // for
    if (detector == true) {
      break;
    } // if
  } // for
  return detector;
} // smallAlphabetsDetectFunction

//  This code defines a function named `smallAlphabetsDetectFunction` that takes
//  a string `detect` as input and checks if it contains any lowercase letters
//  (a-z). The function uses a list of lowercase letter strings and iterates
//  through both the input string and the list to detect the presence of
//  lowercase letters. If at least one lowercase letter is found, the function
//  returns `true`; otherwise, it returns `false`.