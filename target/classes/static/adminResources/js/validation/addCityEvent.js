function addCityEvent() {

	
	if ($('#cityname').val().trim() === 'default') {
		$('#cityname').focus()
		showErrorToast('Please Enter City')		
		return false;
	}
	else if ($('#areaname').val().trim() === 'default') {
		$('#areaname').focus()
		showErrorToast('Please Enter Area')		
		return false;
	}
	else if ($('#eventType').val().trim() === 'default') {
		$('#eventType').focus()
		showErrorToast('Please Enter Event Type')		
		return false;
	}
	else if ($('#cityeventDate').val().trim() === '') {
		$('#cityeventDate').focus()
		showErrorToast('Please Enter Date')		
		return false;
	}
	else if ($('#cityeventtime').val().trim() === '') {
		$('#cityeventtime').focus()
		showErrorToast('Please Enter Time')		
		return false;
	}
	else if ($('#cityeventfromday').val().trim() === '') {
		$('#cityeventfromday').focus()
		showErrorToast('Please Enter From Day')		
		return false;
	}
	else if ($('#cityeventtoday').val().trim() === '') {
		$('#cityeventtoday').focus()
		showErrorToast('Please Enter To Day')		
		return false;
	}
	else if ($('#cityEventdescription').val().trim() === '') {
		$('#cityEventdescription').focus()
		showErrorToast('Please Enter Description')		
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