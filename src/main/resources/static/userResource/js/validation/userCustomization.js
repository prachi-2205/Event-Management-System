function userCustomization() {

	if ($('#person').val().trim() === '') {
		$('#person').focus()
		showErrorToast('Please Enter The Number OF Person')
		return false;
	}

	else if ($('#address').val().trim() === '') {
		$('#address').focus()
		showErrorToast('Please Enter Your Address.')
		return false;

	} else {
		return true;
	}
}