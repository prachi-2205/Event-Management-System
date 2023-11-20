function addAddon() {

	
	if ($('#addonwork').val().trim() === '') {
		$('#addonwork').focus()
		showErrorToast('Please Enter Addon Descrption')		
		return false;
	}
	else if ($('#addonprice').val().trim() === '') {
		$('#addonprice').focus()
		showErrorToast('Please Enter Addon Descrption')		
		return false;
	}
	else if ($('#addondescription').val().trim() === '') {
		$('#addondescription').focus()
		showErrorToast('Please Enter Addon Descrption')		
		return false;
	}
	else if ($('#file').val().trim() === '') {
		$('#file').focus()
		showErrorToast('Please Choose File')
		return false;
	} 
	else {
		return true;
	}
}