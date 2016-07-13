//determine if a string has all unique characters
package main

import "fmt"

func isUnique(input string) bool {
	uchar := make(map[byte]int)
	for i:=0; i<len(input); i++ {
		if uchar[input[i]] == 1 {
			return false
		} else {
		uchar[input[i]] = 1
		}
	} 
	return true
}

func main() {
	fmt.Println(isUnique("anna"))
	fmt.Println(isUnique("abcdefghijklmnopqrstuvwxyz"))
}

//determine if a string is a permutation of a palindrome
package main

import "fmt"

func isPali(input string) bool {
	charList := make(map[byte]int)
	for i:=0; i<len(input); i++ {
		charList[input[i]] += 1
	} if len(input)%2 != 1 {
		for value := range charList {
			if value%2 != 0 {
				return false
			}
		} return true
	} else {
		var oddchar int = 0
		for value := range charList {
			if value%2 != 0 {
				oddchar += 1
			}if oddchar >1 {
			return false
			}
		}if oddchar != 1 {
			return false
		}else {
			return true
		}
	}
}

func main() {
	fmt.Println(isPali("anna"))
}