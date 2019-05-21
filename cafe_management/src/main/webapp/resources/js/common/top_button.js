/**
 * 
 */

$(document).ready(function() {
	$(window).scroll(function() {
		if ($(this).scrollTop() > 200) {
			$('.top__button').fadeIn();
		} else {
			$('.top__button').fadeOut();
		}
	});
	$('.top__button').click(function() {
		$('html, body').animate({
			scrollTop : 0
		}, 400);
		return false;
	});
});