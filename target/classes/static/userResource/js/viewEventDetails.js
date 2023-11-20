function addCart(productImg,productName,productPrice,id) {

	var i = 1; 
	
	var cartTableBody = document.getElementById("cartTableBody");
	var status = false
	console.log(id);
	var productId=id;
	console.log(productId);
	/*
	$('#cartTableBody').each(function (rowIndex,tr){
		$(tr).find('td').each(function (index,td){
			
			var data ;
			
			if(index === 1 ){
				data = document.getElementById('productImg'+id);
			}
			
			if(data !== null && index === 4){
				status = true
				$(this).html(parseInt(td.innerHTML) + 1)
			}
		})
	});
	*/
	
	var r = cartTableBody.insertRow(-1);
	
	var c1 = r.insertCell(0);
	var c2 = r.insertCell(1);
	var c3 = r.insertCell(2);
	var c4 = r.insertCell(3);
	var c5 = r.insertCell(4);
	var c6 = r.insertCell(5);
	
	c1.innerHTML = '<a class="remove" onclick="del(this)">×</a>' 
	c2.innerHTML = '<input type="hidden" name="addonsList" value="'+id+'-'+1+'"><img class="img-fluid" src="'+productImg+'" id="productImg'+id+'"  name="productId" alt="'+id+'" style="height:70px">'
	c3.innerHTML = productName;
	c4.innerHTML = productPrice;
	c5.innerHTML = 1;
	c6.innerHTML = productPrice * 1;
	grandTotal()
}

function del(d) {
	var cartTableBody = document.getElementById("cartTableBody");
	var l = d.parentNode.parentNode;
	cartTableBody.deleteRow(l.rowIndex);
	grandTotal()
}

function grandTotal() {
	
	var tbody = document.getElementById("cartTableBody");
	var rows = tbody.rows;
	
	var subtotal = 0;
	for(var i=1;i<rows.length;i++){
		subtotal = subtotal + parseInt(rows[i].cells[5].innerHTML);
	}
	var catalogPrice = parseInt($('#catalogPriceTotal').html());
	
	var eventPrice = parseInt($('#eventPriceTotal').html());
	
	document.getElementById("grandTotal").innerHTML = subtotal;
	document.getElementById("totalGrandTotal").innerHTML = subtotal + eventPrice + catalogPrice;
	document.getElementById("dbGrandTotal").value = subtotal + eventPrice + catalogPrice;
	
}



