function  addEventType(){

	if ($('#eventtype').val().trim() === '') {
		$('#eventtype').focus()
		showErrorToast('Please Enter Event Type Name')
		return false;
	} 
	else if ($('#eventtypedescription').val().trim() === ' ') {
		$('#eventtypedescription').focus()
		showErrorToast('Please Enter event type description')		
		return false;
	}
	else {
		return true;
	}
}