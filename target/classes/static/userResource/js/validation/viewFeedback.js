function viewFeedback() {

	
	if ($('#comment').val().trim() === '') {
		$('#comment').focus()
		showErrorToast('Please Enter FeedBack Description')		
		return false;
	}
	
	else {
		return true;
	}
}