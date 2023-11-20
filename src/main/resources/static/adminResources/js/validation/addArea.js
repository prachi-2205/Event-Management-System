function addArea() {

	if ($('#cityName').val().trim() === 'default') {
		$('#cityName').focus()
		showErrorToast('Please Enter City Name')
		return false;
	} else if ($('#areaname').val().trim() === '') {
		$('#areaname').focus()
		showErrorToast('Please Enter Area Name')
		return false;
	}

	else if ($('#areadescrption').val().trim() === '') {
		$('#areadescrption').focus()
		showErrorToast('Please Enter Area Descrption')
		return false;
	} else {
		return true;
	}
}