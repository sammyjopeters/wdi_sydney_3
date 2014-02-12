function poundsToDollar (num) {
    p2d = num * 1.84;
    finalResult = (p2d).toFixed(2);
    console.log ("£" + num + " is $" + finalResult);
}

poundsToDollar(6);

function dollarsToPounds (num) {
    
    d2p = num * 0.54;
    finalResult = (d2p).toFixed(2);
    console.log ("$" + num + " is £" + finalResult);
}

dollarsToPounds(86);

function audToNzd (num) {
    
    d2p = num * 1.08;
    finalResult = (d2p).toFixed(2);
    console.log ("$" + num + "AUD is $" + finalResult + "NZD");
}


audToNzd(600);
