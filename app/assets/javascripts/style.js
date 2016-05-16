var main = function(){
	$( ".field input" ).addClass( "form-control" );

	$( ".field textarea" ).addClass( "form-control" );

	$( "#user_remember_me" ).removeClass( "form-control" );

	$( ".field select" ).addClass( "form-control" );

	$( ".actions" ).addClass( "text-center" );

	$( ".actions input" ).addClass( "btn btn-primary" );

	$( ".actions a" ).addClass( "btn btn-primary" );

	$( ".button_to input" ).addClass( "btn btn-primary btn-sm" );

	$( ".button_to" ).addClass( "text-center" );

};

$(document).ready(main);
$(document).on('page:load', main);