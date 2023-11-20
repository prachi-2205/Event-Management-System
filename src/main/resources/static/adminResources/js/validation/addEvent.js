function addEvent() {
	if ($('#eventType').val().trim() === 'default') {
		$('#eventType').focus()
		showErrorToast('Please Enter Event Type')
		return false;
	} else if ($('#eventperson').val().trim() === '') {
		$('#eventperson').focus()
		showErrorToast('Please Enter Event Person')		
		return false;
	}
	
	else if ($('#eventprice').val().trim() === '') {
		$('#eventprice').focus()
		showErrorToast('Please Enter Event Price')		
		return false;
	}
	else if ($('#eventdescrption').val().trim() === '') {
		$('#eventdescrption').focus()
		showErrorToast('Please Enter Event Descrption')		
		return false;
	}
	else {
		return true;
	}
}