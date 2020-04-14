/**
 * to top
 */
 $(window).scroll(function() {
 	if ($(this).scrollTop() > 100) {
 		$('#toTop').fadeIn();
 	} else {
 		$('#toTop').fadeOut();
 	}
 });

 $("#toTop").click(function () {
 	$("html, body").animate({scrollTop: 0}, 500);
 });

/**
* Module Categories on Select
*/
$('#select-category,#selectmenu').on('change', function() {
	var value = $(this).find('option:selected').val();
	window.location.href = value
});	


/**
* Module Add Courses 
*/
$('.btn-process-courses').on('click', function(e) {
	e.preventDefault();

	let button = $(this);

	button.prop("disabled", true);

	var data = [];
	data.push({ name: "id", value: button.data('id') });
	data.push({ name: "redirect", value: button.data('redirect') });

	$.ajax({
		url: button.data('action'),
		method: "POST",
		data: data,
		dataType: 'JSON',
		success: function(data) {

			if (data.status == true) {

				Swal.fire({
					title: data.message,
					icon: 'success',
					confirmButtonColor: '#3085d6',
				})
				.then((result) => {
					window.location.href = data.redirect;
				})                    

			}else {

				Swal.fire({
					title: data.message,
					icon: 'error',
					confirmButtonColor: '#3085d6',
				})

			}

			button.prop("disabled", false);
		},
		error: function(xhr, ajaxOptions, thrownError) {

			Swal.fire({
				title: 'Error Processing !',
				icon: 'error',
				confirmButtonColor: '#3085d6',
			})

			button.prop("disabled", false);

		}
	});

});	

/**
* Module user lesson
*/
$('.btn-process-lesson').on('click', function(e) {
	e.preventDefault();

	let button = $(this);

	button.prop("disabled", true);

	var data = [];
	data.push({ name: "id_courses", value: button.data('id-courses') });
	data.push({ name: "id_lesson", value: button.data('id-lesson') });	

	$.ajax({
		url: button.data('action'),
		method: "POST",
		data: data,
		dataType: 'text',
		success: function(status) {

			if (status == 'set_false') {

				$("i",button).removeClass().addClass('fa fa-check u-color-white u-m-zero');            
			}
			else if (status == 'set_true') {

				$("i",button).removeClass().addClass('fa fa-check u-color-success u-m-zero');             
			}else{

				/** error */
			}

			button.prop("disabled", false);
		},
		error: function(xhr, ajaxOptions, thrownError) {

			Swal.fire({
				title: 'Error Processing !',
				icon: 'error',
				confirmButtonColor: '#3085d6',
			})

			button.prop("disabled", false);

		}
	});

});	


/**
* Module add to wishlist 
*/
$('.btn-process-wishlist').on('click', function(e) {
	e.preventDefault();

	let button = $(this);

	button.prop("disabled", true);

	var data = [];
	data.push({ name: "id", value: button.data('id') });

	$.ajax({
		url: button.data('action'),
		method: "POST",
		data: data,
		dataType: 'text',
		success: function(status) {

			if (status == 'success_remove') {

				$("i",button).removeClass().addClass('fa fa-heart-o');            
			}
			else if (status == 'success_add') {


				$("i",button).removeClass().addClass('fa fa-heart u-text-danger');             
			}else{

				/** error */
			}

			button.prop("disabled", false);
		},
		error: function(xhr, ajaxOptions, thrownError) {

			Swal.fire({
				title: 'Error Processing !',
				icon: 'error',
				confirmButtonColor: '#3085d6',
			})

			button.prop("disabled", false);

		}
	});

});	

/**
 * Module remove wish list
 */

 $('.btn-remove-wishlist').on('click', function(e) {
 	e.preventDefault();
 	Swal.fire({
 		title: $(this).data('title'),
 		text: $(this).data('text'),
 		icon: 'warning',
 		showCancelButton: true,
 		confirmButtonColor: '#3085d6',
 		cancelButtonColor: '#d33',
 		confirmButtonText: 'Yes',
 		cancelButtonText: 'No'        
 	}).then((result) => {
 		if (result.value) {
 			window.location.href = $(this).data('action');
 		}
 	})
 });

/**
* Module Payment
*/
let paybuton = document.getElementById("pay-button");
if(paybuton){
	document.getElementById('pay-button').onclick = function(){

		let token = this.value,
		lang = this.getAttribute("data-lang"),
		action = this.getAttribute("data-action");

		snap.pay(token, {
			language: lang,
			onSuccess: function(result){
				result['token'] = token;
				insert_order(result,action)	
			},
			onPending: function(result){
				result['token'] = token;
				insert_order(result,action)				
			},
			onClose: function(){
				console.log('customer closed the popup without finishing the payment');
			}
		});
	};
}
var insert_order = function(result,action){

	$.ajax({
		url: action,
		method: "POST",
		data: JSON.stringify(result),
		contentType: "application/json; charset=utf-8",
		dataType: 'JSON',
		success: function(data) {

			if (data.status == true) {                  

				window.location.href = data.redirect;

			}else {

				Swal.fire({
					title: data.message,
					icon: 'error',
					confirmButtonColor: '#3085d6',
				})

			}

		},
		error: function(xhr, ajaxOptions, thrownError) {

			Swal.fire({
				title: 'Error Processing !',
				icon: 'error',
				confirmButtonColor: '#3085d6',
			})

		}
	}); 
}

/**
* Module Payment Check
*/
$('.btn-check-payment').on('click', function(e) {
	e.preventDefault();

	let  button = $(this),
	token = button.data("token"),
	lang = button.data("lang");

	button.prop("disabled", true);

	snap.pay(token, {
		language: lang,
		onPending: function(result){
			// console.log(result);
			button.prop("disabled", false);			
			check_order(result)	
		},
		onError: function(){
			button.prop("disabled", false);
			return false; 
		},
		onClose: function(){
			button.prop("disabled", false);
			return false; 
		}
	});
});	

var check_order = function(result){

	$.ajax({
		url: result.finish_redirect_url,
		method: "POST",
		data: JSON.stringify(result),
		contentType: "application/json; charset=utf-8",
		dataType: 'JSON',
		success: function(data) {

			if (data.status == true) {                  

				window.location.href = data.redirect;

			}

		},
		error: function(xhr, ajaxOptions, thrownError) {
			console.log(xhr);
		}
	}); 
}

/**
 * module coupon
 */
 $("#form-coupon").submit(function(e) {
 	e.preventDefault();
 	$("button[type='submit']").prop("disabled", true);
 	$.ajax({
 		url: $(this).data('action'),
 		method: "POST",
 		data: $(this).serialize(),
 		dataType: 'JSON',
 		success: function(data) {

 			if (data.status == 'valid') {
 				$("input[name='code']").prop("disabled", true);

 				$("#order-discount-coupon, #remove-coupon").removeClass('u-hidden');
 				$("#check-coupon").addClass('u-hidden');			
 				$("#order-discount-coupon > h4").html(data.discount_coupon);
 				$("#order-price-total").html(data.price_total);
 				$("#pay-button").val(data.midtrans_token);
 				$("#coupon-respon").html('<small class="c-field__message u-color-success"><i class="fa fa-check"></i> ' + data.message + '</small>'); 				
 			} 
 			else if (data.status == 'invalid') {
 				$("#order-discount-coupon").addClass('u-hidden');
 				$("#order-price-total").html($('#order-price-total').data('price-total')); 				
 				$("#pay-button").val($('#pay-button').data('value')); 				 				
 				$("#coupon-respon").html('<small class="c-field__message u-color-danger"><i class="fa fa-times-circle"></i> ' + data.message + '</small>');
 			}else {
 				Swal.fire({
 					title: 'Error Processing !',
 					icon: 'error',
 					confirmButtonColor: '#3085d6',
 				})
 			}

 			$("button[type='submit']").prop("disabled", false);
 		},
 		error: function(xhr, ajaxOptions, thrownError) {
 			Swal.fire({
 				title: 'Error Processing !',
 				icon: 'error',
 				confirmButtonColor: '#3085d6',
 			})
 		}
 	});
 })

 $('#remove-coupon').on('click', function(e) {
 	e.preventDefault();

 	$("input[name='code']").val('').prop("disabled", false);;
 	$("#order-discount-coupon").addClass('u-hidden');
 	$("#order-price-total").html($('#order-price-total').data('price-total')); 				
 	$("#pay-button").val($('#pay-button').data('value')); 				 				
 	$("#coupon-respon").html('');

 	$("#check-coupon").removeClass('u-hidden');
 	$("#remove-coupon").addClass('u-hidden');
 });	