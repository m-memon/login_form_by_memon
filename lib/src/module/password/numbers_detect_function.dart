bool numbersDetectFunction(String detect) {
  bool detector = false;
  List<String> numbersKeys = [
    "0",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9"
  ]; // numbersKeys
  for (int i = 0; i < numbersKeys.length; i = i + 1) {
    for (int a = 0; a < detect.length; a = a + 1) {
      if (detect[a] == numbersKeys[i]) {
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
} // numbersDetectFunction

//  This code defines a function named `numbersDetectFunction` that takes a
//  string `detect` as input and checks if it contains any numeric digits (0-9).
//  The function uses a list of numeric digit strings and iterates through both
//  the input string and the list to detect the presence of numeric digits. If
//  at least one numeric digit is found, the function returns `true`; otherwise,
//  it returns `false`.