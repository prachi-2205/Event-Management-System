function booking() {

	
	if ($('#FirstName').val().trim() === '') {
		$('#FirstName').focus()
		showErrorToast('Please Your First Name')		
		return false;
	}
	else if ($('#LastName').val().trim() === '') {
		$('#LastName').focus()
		showErrorToast('Please Your Last Name')		
		return false;
	}
	else if ($('#phoneNo').val().trim() === '') {
		$('#phoneNo').focus()
		showErrorToast('Please Enter Your PhoneNO.')		
		return false;
	}
	else if ($('#EmailAddress').val().trim() === '') {
		$('#EmailAddress').focus()
		showErrorToast('Please Enter Your Email.')
		return false;
	} 
	else if ($('#date_picker').val().trim() === '') {
		$('#date_picker').focus()
		showErrorToast('Please Select Event Date.')		
		return false;
	}
	else if ($('#eventTime').val().trim() === '') {
		$('#eventTime').focus()
		showErrorToast('Please Enter Your Event Time.')
		return false;
	} 
	else if ($('#eventVenue').val().trim() === '') {
		$('#eventVenue').focus()
		showErrorToast('Please Enter Your Event Venue.')
		return false;
	} 
	else {
		return true;
	}
}