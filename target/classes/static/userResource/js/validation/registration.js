function registration() {
	
	if ($('#userfullname').val().trim() === '') {
		$('#userfullname').focus()
		showErrorToast('Please Enter Your UserName')
		return false;
	} else if ($('#userphonenumber').val().trim() === '') {
		$('#userphonenumber').focus()
		showErrorToast('Please Enter Your Phone No.')		
		return false;
	}
	else if ($('#useraddress').val().trim() === '') {
		$('#useraddress').focus()
		showErrorToast('Please Enter Your Address')		
		return false;
	}
	else if ($('#username').val().trim() === '') {
		$('#loginvo.username').focus()
		showErrorToast('Please Enter Your Email')
		return false;
	} else if ($('#password').val().trim() === '') {
		$('#loginvo.password').focus()
		showErrorToast('Please Enter Your Password')		
		return false;
	}
	
}