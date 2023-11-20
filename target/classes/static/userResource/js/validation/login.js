function login() {

	if ($('#userName').val().trim() === '') {
		$('#userName').focus()
		showErrorToast('Please Enter Your UserName')
		return false;

	} else if (validateEmail($('#userName').val()) == false) {
		$('#userName').focus()
		showErrorToast('Please Enter Valid UserName')
		return false;
	} else if ($('#userPassword').val().trim() === '') {
		$('#userPassword').focus()
		showErrorToast('Please Enter Your Password')
		return false;
	}

	function validateEmail(sEmail) {
		var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		if (filter.test(sEmail)) {
			return true;
		} else {
			return false;
		}
	}
}