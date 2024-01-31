import 'small_alphabets_detect_function.dart';
import 'capital_alphabets_detect_function.dart';
import 'numbers_detect_function.dart';
import 'special_detect_function.dart';
import 'repeated_characters_functions.dart';

int passwordScoreCountFunction(String password) {
  int score = 0;
  if (smallAlphabetsDetectFunction(password) == true) {
    score += 1;
  } // if
  if (capitalAlphabetsDetectFunction(password) == true) {
    score = score + 1;
  } // if
  if (numbersDetectFunction(password) == true) {
    score = score + 1;
  } // if
  if (specialDetectFunction(password) == true) {
    score = score + 1;
  } // if
  if (repeatedCharactersFunctions(password) == true) {
    score = score + 1;
  } // if
  return score;
} // passwordScoreCountFunction

//  This code comprises an import statement and a function named
//  `passwordScoreCountFunction`. The imports bring in functions from separate
//  files: `small_alphabets_detect_function`,
//  `capital_alphabets_detect_function`, `numbers_detect_function`,
//  `special_detect_function`, and `repeated_characters_functions`. The
//  `passwordScoreCountFunction` takes a string `password` as input and
//  calculates a score based on the presence of small alphabets, capital alphabets,
//  numbers, special characters, and the absence of repeated consecutive characters.
//  The function increments the score for each condition that is met, and the
//  final score is returned.