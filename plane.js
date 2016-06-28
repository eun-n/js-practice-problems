
function startCity (arr) {
  for(var i=0; i<arr.length; i++) {
    for(var j=0; j<arr.length; j++) {
    	console.log(i, j);
    	if(arr[i].departure == arr[j].destination) {
    		j=arr.length-1;
    	}else if ((j === arr.length-1) && arr[i].departure != arr[j].destination) {
        return arr[i].departure;
      }
    }
  }
 }

var ticket=[{'departure': 'Seoul', 'destination': 'Dallas'}, {'departure': 'Dallas', 'destination': 'Vancouver'},{'departure': 'Seattle', 'destination': 'Seoul'}];

// console.log(startCity(ticket));
console.log(startCity(ticket));