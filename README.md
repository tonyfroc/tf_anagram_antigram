# Anagram and Antigrams

#### By Tony Froccaro

#### Anagrams and Antigrams utilizing Ruby and RSpec

## Technologies Used

- Ruby
- RSpec

## Description

Anagrams and Antigrams checks if two words are anagrams. An anagram "...is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once." To achieve this functionality, the two arguments (strings -- words or sentences) are trimmed of white space and punctuation, downcased, sorted in alphabetical order, and finally returned in an alphabetically ordered array of letters. Next, the two arrays lengths are compared and they are scanned to check if any vowels are present. If they are the same length, and contain at least one vowel the is_anagram method checks if the arrays are strictly equal. If they are strictly equal, they are anagrams. In addition to checking if the two strings are anagrams, if they are not anagrams, the application checks if the strings are antigrams. Antigrams do not contain a single letter that is identical. If there are no vowels present in either of the strings, the application returns "NO ACTUAL WORDS DETECTED!". If at least one word is identical in each string, but they are not anagrams, the program returns "NO ANAGRAM DETECTED!".

## Tests

See `anagram_logic_spec.rb` in the `spec` folder.

## Setup/Installation Requirements

- Download git
- Install Ruby
- Download a text editor (preferably VSCode)
- Navigate to your Desktop folder
- Make a folder to store the application files
- Navigate to https://github.com/tonyfroc/tf_anagram_antigram
- Select code, then copy the link below "Clone"
- In terminal type:
- `git init`
- `git clone `https://github.com/tonyfroc/tf_anagram_antigram`
- execute the following script from the root folder: `ruby ./lib/anagram_script.rb`

## Known Bugs

- No user interface built yet.

## License

_[MIT](https://opensource.org/licenses/MIT)_  
Copyright (c) 2022, Tony Froccaro
