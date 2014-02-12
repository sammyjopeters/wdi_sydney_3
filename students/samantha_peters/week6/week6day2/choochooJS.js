var linesList = ["N", "L", "S"];

var nLine = {"times": 4, "34th": 3, "28th": 2, "23rd": 1, "union": 0, "8th" :-1};
var lLine = { "8th": 2, "6th": 1, "union": 0, "3rd": -1, "1st": -2 };
var sLine = {"grand": 4, "33rd": 3, "28th": 2, "23rd": 1, "union": 0, "aston": -1 };

var lineStart = linesList[2];
var stationSt = sLine["grand"];

var lineFinish = linesList[0];
var stationFin = nLine["8th"];

function howManyStops(lineStart, stationSt, lineFinish, stationFin){
	//check to see if it's the same line we're doing here...
	if (lineStart === lineFinish){

		//then subtract the values of the stations
		result = Math.abs(stationSt - stationFin);

	} else {
		//then add the values of the stations
		result = Math.abs(stationSt) + Math.abs(stationFin);
	}

	console.log ("You have " + result + " stops to your destination.");

}