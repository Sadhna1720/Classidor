function togglePass() {
	console.log("sadhna");
	let link = document.querySelector('#lPassword');
	var userLink = document.querySelector('#UserId');

	if (link) {
		let target = link.getAttribute('type');
		let userTarget = userLink.getAttribute('type');

		if (target === userTarget)
			document.getElementById("lPassword").setAttribute("type", "password");
		else
			document.getElementById("lPassword").setAttribute("type", "text");
	}
	document.getElementById("togglePassword").classList.toggle("bi-eye");
}

function formSubmit(){
			console.log("***********");
}

