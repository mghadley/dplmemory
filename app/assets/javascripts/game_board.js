$(document).ready(function() {
	function checkForWin() {
		if($('.matched').length === 16) {
			$('.banner').show()
			$('.reset').show()
		}
	}

	function checkForMatch() {
		if($('img', '.clicked').first().attr('src') === $('img', '.clicked').last().attr('src')) {
			$('.clicked').addClass('matched');
		} else {
			$('.content', '.clicked').hide()
		}
		$('.clicked').removeClass('clicked');
		checkForWin();
	}

	$('.card').click(function() {
		if($('.clicked').length < 2 && (!$(this).hasClass('matched')) && (!$(this).hasClass('clicked'))) {
			$(this).addClass('clicked');
			$('.content', this).show();
			$('#clicks').text((parseInt($('#clicks').text()) + 1))
		}
		if($('.clicked').length === 2) {
			setTimeout(checkForMatch, 800)
		}
	});

	$('.reset').click(function() {
		$('.card').removeClass('matched').removeClass('clicked');
		$('.banner').hide();
		$('.reset').hide();
		$('.content').hide();

		$('#last-game').text("Last Game: " + $('#clicks').text());
		$('#clicks').text('0');
		$('.counter').addClass('large-counter');
	})

	$(document).keyup( function(e) {
		if(e.keyCode === 67) {
			$('.card').addClass('matched');
			$('.content').show();
			checkForWin();
		}
	})
})