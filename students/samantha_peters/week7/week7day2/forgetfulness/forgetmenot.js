var possibleSymbols = ['@', '@', '$', '$', 'a', 'a', 'X', 'X', '+', '+'];
var symbol = "";
var twoCardsToCheck = [];

var generateCards = function () {


    for (i = 1; i < 11; i = i + 1) {
        symbol = new String(_.sample(possibleSymbols, [1]));
        possibleSymbols.splice(possibleSymbols.indexOf(String(symbol)), 1);
        var singleCard = $('<div>', {
            class: 'column',
            id: i
        });
        singleCard.html('<span class="hidden">' + symbol + '</span>');
        $("#gameArea").append(singleCard);

    }



}


var startTurn = function () {
    console.log('turn started');
    selectedCard = $(this);
    //when the card is clicked, flip the class of the span to show it, and add the html of the span to an array.
    selectedCard.find('span.hidden').removeClass('hidden').addClass('unhidden');
    twoCardsToCheck.push(selectedCard);
    checkIfMatch();

}

var checkIfMatch = function () {
    if (_.size(twoCardsToCheck) === 2) {
        if ($(twoCardsToCheck[0]).find('span').html() === $(twoCardsToCheck[1]).find('span').html() ) {
            alert("they match!");

            //add 'found' class to the cards
            $(twoCardsToCheck[0]).find('.column').addClass('found');
            $(twoCardsToCheck[1]).find('.column').addClass('found');
            //reset the cards-to-check array
            twoCardsToCheck = [];
        } else {

            //reset the cards-to-check array
                        //set both cards to 'hidden' again
            $(twoCardsToCheck[0]).find('span.unhidden').removeClass('unhidden').addClass('hidden');
            $(twoCardsToCheck[1]).find('span.unhidden').removeClass('unhidden').addClass('hidden');
            twoCardsToCheck = [];
            alert("no match, start again");


        }

    } else {
        //there's only one card, no need to check anything
        alert('card added, click another');
        return;
    }


}



//click event on the button
$('#start').on('click', generateCards);

// click event on the singleCard
$('#gameArea').on('click', '.column', startTurn);