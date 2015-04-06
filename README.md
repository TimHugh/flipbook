# Flipbook

## Introduction

"Gremlins came in the night and reversed the order of the words in all of our books! They also stole the split function from our standard Ruby library! Can you help us?"

## Usage

Using the standard library, the flipbook method would accomplish the same thing as this line of Ruby:

```book_string.split(" ").reverse.join(" ")```

The intent is to accomplish the same output without using any of the above functions, and hopefully to improve on memory efficiency in the process.

## Approach

Overall, the function achieves O(2n) by iterating through the string one character at a time, and then iterating through a second time to join the array into a string.

    def self.flip_words(book_string)
      result = [""]
      book_string.each_char do |char|
        if char == " "
          result.insert(0,"")
        else
          result.first << char
        end
      end
      result.join(" ")
    end

By using the shovel operator to build the individual words, only one string is created per word, instead of creating another string for every character that is encountered.

## Improvements

Ideally, the function could be written to edit the string in place, without having to create an intermediate array that has to be joined afterward. This would cut the number of strings that are created in half, requiring only a string to hold the current character, which could easily be discarded after it is added back into the string.
