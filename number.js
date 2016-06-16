var a=7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858;

function blah(c) {
	c = c.toString();
	c = c.split('0');
	for (var i = 0; i<c.length; i++) {
		if (c[i].length <10) {
			console.log('yep');
		} else {
			console.log('nope');
		}
	}
}

// blah(a);

function len (n) {
	n = n.toString();
	console.log(n.length)
}
len(a);