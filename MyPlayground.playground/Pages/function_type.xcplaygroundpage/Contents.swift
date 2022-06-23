// Normal Function

func greeting1(){
    print("Hello")
}

greeting1()

// Function with Parameters
func greeting2(name:String){
    print("Hello \(name)")
}

greeting2(name:"JOJO")

// Output Function
func greeting3(name:String) -> Bool {
    if name == "JOJO" {
        return true
    }
    else {
        return false
    }
}

var isJojo = greeting3(name:"Jojo")
print(isJojo)

// Assignment Function3
/*****
 [Coding Exercise] Function Part3
 Using what do you have leant about functions which have outout, create a function called [isOdd(n:int)]
 The function will test to see if the number is odd. If it is , then it should output true otherwise it should output false. These are Booleans and not Strings.
 */

func isOdd(n:Int) -> Bool {
    if n % 2 != 0 {
        return true
    }
    else {
        return false
    }
}

print(isOdd(n:5))
