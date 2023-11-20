function addCatalog(){

	if ($('#eventType').val().trim() === 'default') {
		$('#eventType').focus()
		showErrorToast('Please Enter Event Type')
		return false;
	} 
	else if ($('#catalogPrice').val().trim() === '') {
	$('#catalogPrice').focus()
	showErrorToast('Please Enter Catalog Price')		
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

/*else if ($('#catalogdescrption').val().trim() === '') {
	$('#catalogdescrption').focus()
	showErrorToast('Please Enter Catalog Descrption')		
	return false;
}*/