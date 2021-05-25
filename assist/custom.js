$(document).ready(function(){
	$("#insert_form").on("submit",function(e){
		e.preventDefault();
		var name=$("#name").val();
		var email=$("#email").val();
		var password=$("#password").val();
		var mobile=$("#mobile").val();
		var date=$("#date").val();
		var pic=$("#pic").val();

		var name_check=/^[A-Za-z. ]{3,20}$/;
		var email_check=/^[A-Za-z._0-9]{3,}@[A-Za-z]{2,}[.]{1}[A-Za-z]{3,16}$/;
		var password_check=/^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[!@#$%^&*])[A-Za-z0-9!@#$%^&*]{5,15}$/;
		var mobile_check=/^[6789][0-9]{9}$/;
		var pic_check=/^([a-zA-Z0-9\s_\\.\-:])+(.jpg|.jpeg|.png)$/; 
		// console.log(name+email+password+mobile+date+pic);
		if(!name_check.test(name))
		{
			$("#name_err").html("* Name Not Valid");
		}
		if(!email_check.test(email))
		{
			$("#email_err").html("* Email Not Valid");
		}
		if(!password_check.test(password))
		{
			$("#password_err").html("* Password Not Valid");
		}
		if(!mobile_check.test(mobile))
		{
			$("#mobile_err").html("* Mobile Number Not Valid");
		}
		if(!pic_check.test(pic))
		{
			$("#pic_err").html("* Image Not Valid");
		}

		if((name_check.test(name))  &&  (email_check.test(email)) && (password_check.test(password))  &&  (mobile_check.test(mobile))  &&  (pic_check.test(pic)))
		{
			var url=BASE_URL+'Home/insert';
			$.ajax({
				url : url,
				type: 'POST',
				data: new FormData(this),
				contentType:false,
				cache:false,
				processData:false,
				success:function(data)
				{
					$("#insert_form").trigger('reset');
					$("#msg").html("Data Insert Success");
					// console.log(data);
				}
			});
		}
	});
});