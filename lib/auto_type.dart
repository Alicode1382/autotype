import 'dart:async';

class AutoType {
  String _autoTypeText = '';

  String get autoTypeText => _autoTypeText;
/// Simulates a typewriter effect by progressively updating a substring from a list of strings.
/// 
/// The method takes a list of strings and iterates over each character, creating a typewriter 
/// animation effect by incrementally increasing the substring length and updating the callback 
/// with the current substring. It can optionally repeat the animation indefinitely.
/// 
/// Parameters:
/// - `currentCharIndex` (int): The index of the current character being processed in the current string.
///   Defaults to 0.
/// - `currentIndex` (int): The index of the current string in the list of strings being processed.
///   Defaults to 0.
/// - `repeat` (bool): If true, the animation will repeat indefinitely. Defaults to false.
/// - `textsCharacter` (List<String>): A list of strings to be processed for the typewriter effect.
/// - `updateCallback` (void Function(String)): A callback function that gets called with the current 
///   substring to update the display.
///
/// If the list of strings is empty, the method returns immediately. The method continues updating the 
/// substring and calling the callback until the end of the current string is reached. If `repeat` is 
/// true, the method will restart from the beginning of the list of strings once the end is reached. 
/// If `repeat` is false, the method will stop after processing all characters in the list.
  void typeWriter({
    int currentCharIndex = 0,
    int currentIndex = 0,
    bool repeat = false,
    required List<String> textsCharacter,
    required void Function(String) updateCallback,
  }) {
    if (textsCharacter.isEmpty) return;

    if (currentCharIndex < textsCharacter[currentIndex].length) {
      currentCharIndex++;
    } else {
      currentIndex = (currentIndex + 1) % textsCharacter.length;
      currentCharIndex = 0;
    }

    Future.delayed(const Duration(milliseconds: 150), () {
      _autoTypeText =
          textsCharacter[currentIndex].substring(0, currentCharIndex);
        updateCallback(_autoTypeText);
      
      if (repeat) {

        typeWriter(
          textsCharacter: textsCharacter,
          currentCharIndex: currentCharIndex,
          currentIndex: currentIndex,
          updateCallback: updateCallback,
          repeat: repeat
        );
      }else{
        if(currentCharIndex!= textsCharacter[currentIndex].length){
            typeWriter(
          textsCharacter: textsCharacter,
          currentCharIndex: currentCharIndex,
          currentIndex: currentIndex,
          updateCallback: updateCallback,
          repeat: repeat
        );
        }
      }
    });
  }
}
