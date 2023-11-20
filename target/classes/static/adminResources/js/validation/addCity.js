function addCity() {

	if ($('#cityname').val().trim() === '') {
		$('#cityname').focus()
		showErrorToast('Please Enter City Name')
		return false;
	} else if ($('#citydescription').val().trim() === '') {
		$('#citydescription').focus()
		showErrorToast('Please Enter City Descrption')		
		return false;
	}else {
		return true;
	}
}