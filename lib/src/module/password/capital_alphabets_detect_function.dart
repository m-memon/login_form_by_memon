bool capitalAlphabetsDetectFunction(String detect) {
  bool detector = false;
  List<String> capitalAlphabets = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
  ]; // capitalAlphabets
  for (int i = 0; i < capitalAlphabets.length; i = i + 1) {
    for (int a = 0; a < detect.length; a = a + 1) {
      if (detect[a] == capitalAlphabets[i]) {
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
} // capitalAlphabetsDetectFunction

//  This code defines a function named capitalAlphabetsDetectFunction that
//  takes a string detect as input and checks if it contains any capital letters
//  (A-Z). The function uses a list of capital letters and iterates through both
//  the input string and the list to detect the presence of capital letters. If
//  at least one capital letter is found, the function returns true; otherwise,
//  it returns false.