function validate(frm) {

	document.getElementById("name").innerHTML = "";
	var frm = document.frm.value;
	var name = document.frm.name.value;
	var email = document.frm.email.value;

	var flag = "false";
	if (frm == "") {
		document.getElementById("name").innerHTML = "I have changed!";
		alert("name is required");
		document.getElementById("name").focus();
		flag = false;
	}
	if (name == "") {
		document.getElementById("name").innerHTML = "I have changed!";
		alert("name is required");
		document.getElementById("name").focus();
		flag = false;
	}
	if (email == "") {
		document.getElementById("name").innerHTML = "I have changed!";
		alert("email is required");
		document.getElementById("email").focus();
		flag = false;
	}


	return flag;
}