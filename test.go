package 

import "fmt"

func main() {
	fmt.Println("it's over 9000!")


	fmt.Println("true && false = ", true && false)
	//for loop
	i := 1
	for i<=10 {
		fmt.Println(i)
		i++ //i=i+1
	}
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