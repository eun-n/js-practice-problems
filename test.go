package 

import "fmt"

func main() {
	fmt.Println("it's over 9000!")

	//variables are statically typed so they can't change type once they're defined
	//uint8 : unsigned 8-bit integers (0-255)
	//uint16 : unsigned 16-bit integers (0-65535)
	//uint32 : unsigned 32-bit inteers (0 to 4294967295)
	//uint64 : unsigned 64-bit integers (0-some super long number)
	//int8 : signed 8-bit integer (-128 to 127)
	//int16 : signed 16-bit integer (-32768 to 32767)
	var age int = 40

	//floats for numbers with decimals
	//float32 or float64
	var favNum float64 = 1.923856928

	//use := to declare variable type by having GO automatically detect it
	randNum := 1

	//if a variable is declared one type, you can't change it!!

	fmt.Println(age,favNum) //when it prints, GO automatically adds a space

	//can perform arithmetic in Println (+ - * / %)

	//create a constant, define datatype
	cons pi float64 = 3.14159

	var (
		varA = 2
		varB = 3
	)

	//strings are with double quotes
	var myName string = "Cool Stuff"

	fmt.Println(len(myName))
	//string concat
	fmt.Println(myName + " is a robot")

	//string new line
	fmt.Println(myNam \n \n)

	// boolean
	var isOver20 bool = true

	//how to print floats with up to 3 decimals
	fmt.Printf("%.3f \n", pi)

	//%b = binary format
	fmt.Printf("%d \n", 100)
	//%d = integer
	//%c = character with character code
	//%x =hex code
	//%e =scientific notation

		fmt.Println("true && false = ", true && false)
	//for loop
	i := 1
	for i<=10 {
		fmt.Println(i)
		i++ //i=i+1
	}

	//another for loop
	for j := 0; j<5; j++ {
		fmt.Println(j)
	}

	yourAge := 18
	if yourAge >= 16 {
		fmt.Println("you can drive")
	} else {
		fmt.Println("you can't drive")
	} else if yourAge >= 18 {
		fmt.Println("you can vote")
	}

	//switch statement
	switch yourAge {
		case 16 : fmt.Println("go drive")
		case 18 : fmt.Println("go vote")
		default : fmt.Println(" go have fun")
	}

	//arrays
	//array of 5 numbers
	var favNums[5] float 64
	favNums[0] = 12
	favNums[1] = 2
	favNums[2] = 5
	favNums[3] = 19
	favNums[4] = 89

	fmt.Println(favNums[3])

	//another way to initialize an array
	favNums1 := [5]float64 {1, 2, 3, 4, 5}

	//iterate throught the array
	for i, value := range favNums1 {
		//prints the value and the array index
		fmt.Println(value, i)
	}
	numSlice := [] int {5, 4, 3, 2, 1}

	//print out 3rd index to the 5th (not include the 5th)
	numSlice2 := numSlice[3:5]

	//print out first index to the 3rd
	numSlice2 := numSlice[:3]

	//print out 3rd index to the end
	numSlice2 := numSlice[3:]

	//will not have a defined set of values when you start (default value of 0 for the first 5, 10 is the max size)
	numSlice3 := make([]int, 5, 10)

	//copy over the values of the first numSlice into numSlice3
	copy(numSlice3, numSlice)

	//add the values 0 and -1 to the end of the array
	numSlice3 = append(numSlice3, 0, -1)



	//MAPS

	//map with presidents with their age as president
	presAge := make(map[string] int)

	presAge["TheodoreRoosevelt"] = 42

	fmt.Println(len(presAge))

	presAge["John F. Kennedy"] = 43
	fmt.Println(len(presAge))

	//delete an input from the map using the key
	delete(presAge, "John F. Kennedy")

}

//function to return the sum of an array
func main() {
	listNums := []float64{1,2,3,4,5}

	fmt.Println("sum : ", addThemUp(listNums))
}

func addThemUp(numbers []float64) float64{
	sum := 0.0

	for _, val := range numbers {
		sum += val
	}

	return sum
}

//function to print out two values **SUPER COOL
func main() {
	num1, num2 := next2Values(5)
	fmt.Println(num1, num2)
}

func next2Values(number int) (int, int) {
	return number +1, number+2
}

//send an undefined number of values to a function
func main() {
	fmt.Println(subtractThem(1,2,3,4,5))
}
func subtractThem(args ...int) int {
	finalValue := 0
	for _, value := range args {
		finalValue -= value
	}
	return finalValue
}

//create a function inside of a function
func main() {
	num3 := 3
	doubleNum := func () int {
		num3 *= 2

		return num3
	}
	fmt.Println(doubleNum())
}

//recursion time!!
func main() {
	fmt.Println(factorial(3))
}
func factorial (num int) int {
	if num == 0 {
		return 1
	}
	return num * factorial(num-1)
}

//defer executes the following function after completing the main function
func main() {
	defer printTwo()
	printOne()
}

func printOne() {fmt.Println(1)}
func printTwo() {fmt.Println(2)}

//more defer stuff, perform division in a safe way so it will skip over the problematic function
func main() {
	fmt.Println(safeDiv(3,0))
	fmt.Println(safeDiv(3,2))
}
func safeDiv(num1, num2 int) int {
	defer func() {
		fmt.Println(recover())
		//recover catches if an error would occur
	}()

	solution := num1 / num2
	return solution
}

//PANIC
func main() {
	demPanic()
}

func demPanic() {
	defer func() {
		fmt.Println(recover())
	}()
	panic("PANIC")
}

//how pointers work inside of GO
	//use a pointer to be able to change the value of a variable
	func main () {
		x := 0
		//&x is passing the reference to x
		changeXValNow(&x)
		fmt.Println("x = ", x)

	}

	//adding a * allows you to change the value at the memory address
	func changeXValNow(x  *int) {
		*x=2
	}

//another example with pointers
	func main() {
		yPtr := new(int)
		changeYValNow(yPtr)

		fmt.Println("y = ", *yPtr)
	}

	func changeYValNow(yPtr *int) {
		*yPtr = 100
	}


//http handler

type Handler interface {
	ServeHTTP(ResponseWriter, *Request)
}

type HandlerFunc func(ResponseWriter, *Request)

//ServeHTTP calls f(w, r), don't need a struct to implement HTTP
func (f HandlerFunc) ServeHTTP(w ResponseWriter, r *Request) {
	f(w, r)
}

//remember this signature

func(w http.ResponseWriter, r *http.Request)

//A ResponseWriter interface is used by an HTTP handler to construct an HTTP response

type ResponseWriter interface {

	Header() Header
	Write([]byte) (int, error)
	WriteHeader(int)
}

//http.Request contains everything you need to know about the request


//r.Method - HTTP method(GET, POST, PUT, PATCH, DELETE etc)
//r.URL.Path - Request path(/things/123)
//r.URL.String() - Full URL
//r.URL.Query() - Query parameters(qsomething&p=2)
//r.Body - io.ReadCloser of the request body


//Routing
//GET /things -> handleTHings

//http.HandleFunc("/hello", handleHello)
//http.HandleFunc("/goodbye", handleGoodbye)
//http.HandleFunc("/", handleIndex)

//use the standard library until you need something more

//beware: / matches everything, no path parameter parsing, one handler for every HTTP method



//Routing package
func main() {
	router := mux.NewRouter()
	router.HandleFunc("/", handleIndex)
	router.HandleFunc("/hello", handleHello)
	router.HandleFunc("/goodbye", handleGoodbye)

	router.HandleFunc("/things/{id}", handleTHingsRead).Methods("GET")
	router.HandleFunc("/things/{id}", handleThingsUpdate).Methods("PUT")

	http.Handle("/", router)
}

func handleThingsRead(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	//TODO: load thing with ID vars["id"]
}