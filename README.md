# Lingo### Assignment 1Create a program that accepts a 6 letter word, compares it to a predefined answer (also a 6 letter word), and outputs the result as a string formatted as follows:A “1” for every letter in the original word that matches the letter on the same position in the answer. A “0” for all other letters. E.g.:![Example 1](https://raw.github.com/s-andringa/amsrb-lingo/master/img/example_01.png)Ask the user to type in an input word from the command-line.Print the result back to the screen.Argument checking is optional, you may assume the input is an existing 6 letter word.### Assignment 2Extend your program from assignment 1 so it outputs the result in a more user friendly format. Print the input word and show the letters that matched the answer in green.![Example 1](https://raw.github.com/s-andringa/amsrb-lingo/master/img/example_02.png)You may want to use the ”rainbow” gem for adding color: http://rubygems.org/gems/rainbow### Assignment 3Make your program detect letters that occur at a different position in the answer. Make them yellow. Exact matches should remain green.![Example 1](https://raw.github.com/s-andringa/amsrb-lingo/master/img/example_03.png)Don’t worry about the following edge cases:Letters that occur multiple times in the input word may all be colored yellow, even if that letter only occurs once in the answer:![Example 1](https://raw.github.com/s-andringa/amsrb-lingo/master/img/example_04.png)A letter that occurs in the answer at a position that has a perfect match may also be colored yellow:![Example 1](https://raw.github.com/s-andringa/amsrb-lingo/master/img/example_05.png)### Assignment 4Now take into account the edge cases from above.Of letters that occur multiple times in the input word only as much as the number of occurrences in the answer should be colored yellow:![Example 1](https://raw.github.com/s-andringa/amsrb-lingo/master/img/example_06.png)Don’t color a letter yellow if in the answer it also has an exact match:![Example 1](https://raw.github.com/s-andringa/amsrb-lingo/master/img/example_07.png)---_Prepared by Sjoerd Andringa (Innovation Factory) for the Amsterdam.rb ruby user group._Twitter: [SjAndringa](http://twitter.com/SjAndringa)
Github: [s-andringa](http://github.com/s-andringa)
<http://www.innovationfactory.eu>