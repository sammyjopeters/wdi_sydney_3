var possibleSymbols = ['@', '$', 'a', 'f', '#', '+'];
var symbol = "";	

	var generateCards = function () {


	    for (i = 1; i < 11; i = i + 1) {
	        symbol = new String(_.sample(this.possibleSymbols, [1]));
	        var singleCard = $('<div>', {
	            class: 'column',
	            id: i
	        });
	        singleCard.html(symbol);
	        $("#gameArea").append(singleCard);

	    }



	}

	//$('#start').on('click', generateCards);

	generateCards();