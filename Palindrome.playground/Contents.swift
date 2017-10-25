//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 Check if there is a palindrome in the sentence, and print number of occurences of a palindrome in the same sentence
 */

func palindromeCountInASentence(sentence : String) -> [String : Int]{
    let words = sentence.components(separatedBy: " ")
    var palindromeCount = [String : Int]()
    words.forEach{ word in
        
        if checkPalindrome(word: word) {
            
            var count = palindromeCount[word] ?? 0
            palindromeCount[word] = count + 1
        }
    }
    
    
    return palindromeCount
}

func checkPalindrome(word : String) -> Bool{
    
    let reversedWord = String(word.reversed())
    let isPalindrome = (reversedWord == word)
    return isPalindrome
}


palindromeCountInASentence(sentence: "hello this is check if anna anna civic port racercar racercar racercar are palindromes")
