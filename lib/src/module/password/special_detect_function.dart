bool specialDetectFunction(String detect) {
  bool detector = false;
  List<String> specialKeys = [
    "`",
    "~",
    "!",
    "@",
    "#",
    "\$",
    "%",
    "^",
    "&",
    "*",
    "(",
    ")",
    "-",
    "_",
    "=",
    "+",
    "[",
    "{",
    "]",
    "}",
    "\\",
    "|",
    ";",
    ":",
    "'",
    '"',
    ",",
    "<",
    ".",
    ">",
    "/",
    "?"
  ]; // specialKeys
  for (int i = 0; i < specialKeys.length; i = i + 1) {
    for (int a = 0; a < detect.length; a = a + 1) {
      if (detect[a] == specialKeys[i]) {
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
} // specialDetectFunction

//  This code defines a function named `specialDetectFunction` that takes a
//  string `detect` as input and checks if it contains any special characters.
//  The function uses a list of special character strings and iterates through
//  both the input string and the list to detect the presence of special
//  characters. If at least one special character is found, the function returns
//  `true`; otherwise, it returns `false`.