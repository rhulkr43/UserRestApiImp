$(document).ready(function(){
	$('#empselect').change(function(){
	$.ajax({
		type : "POST",
		contentType : "application/json",
		url : "/Ajax/getEmp/"+$("#empselect").val(),
		
		dataType : 'json',				
		success : function(data) {
			console.log("done");
			$('#salary').text(data.total);
			$('#advancesalary').text(data.advancetotal);
			$('#advancesalarytaken').text(data.totalsalarytaken);
			$('#remaningsalary').text(parseInt(data.total)-parseInt(data.totalsalarytaken));
			if(parseInt(data.total)-parseInt(data.totalsalarytaken)==0){
				$('#payment').css("display","none");
				//alert("Sorry Salary Already Given")
			}else{
				$('#payment').css("display","block");
			}
		}
	});
	});
	$('#empselectadvance').change(function(){
	$.ajax({
		type : "POST",
		contentType : "application/json",
		url : "/Ajax/getEmp/"+$("#empselectadvance").val(),
		
		dataType : 'json',				
		success : function(data) {
			
			$('#salary').text(data.total);
			$('#empselectadvanceview').text(data.advancetotal);
			$('#advancesalarytaken').text(data.totalsalarytaken);
			$('#remaningsalary').text(parseInt(data.total)-parseInt(data.totalsalarytaken));
			if(parseInt(data.total)-parseInt(data.totalsalarytaken)==0){
				$('#payment').css("display","none");
				//alert("Sorry Salary Already Given")
			}else{
				$('#payment').css("display","block");
			}
		}
	});
	});
	
	 $('#savecustomer').on('click', function () {
                Lobibox.notify('success', {
                    title: 'Success',
                    msg: 'Employee Add Successfull.'
                });
            });


$('#bankbalance').change(function(){
		$.ajax({
		type : "POST",
		contentType : "application/json",
		url : "Ajax/getbankbalance/"+$("#bankbalance").val(),
		
		dataType : 'json',				
		success : function(data) {
			var bname=data.bank.bankname;
			var amount=data.bank.amount;
			$('#bankbalanceshow').text(amount);
			$('#bname').text(bname);
			}
		
	});
});

$('#balancecheck').click(function(){
	var balance=$('#bankbalanceshow').val();
	var amount1=$('#amountverificatioon').val();
	console.log(balance);
});

$('#paymentinout').change(function(){
	$.ajax({
		type : "POST",
		contentType : "application/json",
		url : "Ajax/getpaymentinout/"+$("#paymentinout").val(),
		
		dataType : 'json',				
		success : function(data) {
			var msg=data.statusdata;
		var html="";
			$.each(msg, function (i, item) {
    	html +="<option value='"+item.paymentname+"'>" + item.paymentname + "</option>";
    });
$("#salesaccount").html(html);
			}
		
	});
});
});